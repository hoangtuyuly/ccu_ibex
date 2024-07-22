#!/usr/bin/env python3

#
# This file is part of LiteX-Boards.
#
# Copyright (c) 2021 Franck Jullien <franck.jullien@collshade.fr>
# SPDX-License-Identifier: BSD-2-Clause

from migen import *
from migen.genlib.resetsync import AsyncResetSynchronizer

from litex_boards.platforms import efinix_titanium_ti60_f225_dev_kit

from litex.build.generic_platform import *

from litex.soc.cores.clock import *
from litex.soc.integration.soc_core import *
from litex.soc.integration.builder import *
from litex.soc.integration.soc import SoCRegion

from litex.soc.cores.hyperbus import HyperRAM

from liteeth.phy.titaniumrgmii import LiteEthPHYRGMII

# CRG ----------------------------------------------------------------------------------------------

class _CRG(Module):
    def __init__(self, platform, sys_clk_freq):
        self.clock_domains.cd_sys = ClockDomain()

        # # #

        clk25 = platform.request("clk25")
        rst_n = platform.request("user_btn", 0)

        # PLL
        self.submodules.pll = pll = TITANIUMPLL(platform)
        self.comb += pll.reset.eq(~rst_n)
        pll.register_clkin(clk25, 25e6)
        # You can use CLKOUT0 only for clocks with a maximum frequency of 4x
        # (integer) of the reference clock. If all your system clocks do not fall within
        # this range, you should dedicate one unused clock for CLKOUT0.
        pll.create_clkout(None, 25e6)

        pll.create_clkout(self.cd_sys, sys_clk_freq, with_reset=True)

# BaseSoC ------------------------------------------------------------------------------------------

class BaseSoC(SoCCore):
    def __init__(self, sys_clk_freq=int(200e6),
        with_spi_flash = False,
        with_hyperram  = False,
        with_ethernet  = False,
        with_etherbone = False,
        eth_phy        = 0,
        eth_ip         = "192.168.1.50",
        **kwargs):
        platform = efinix_titanium_ti60_f225_dev_kit.Platform()

        # CRG --------------------------------------------------------------------------------------
        self.submodules.crg = _CRG(platform, sys_clk_freq)

        # SoCCore ----------------------------------------------------------------------------------
        SoCCore.__init__(self, platform, sys_clk_freq, ident="LiteX SoC on Efinix Titanium Ti60 F225 Dev Kit", **kwargs)

        # SPI Flash --------------------------------------------------------------------------------
        if with_spi_flash:
            from litespi.modules import W25Q64JW
            from litespi.opcodes import SpiNorFlashOpCodes as Codes
            self.add_spi_flash(mode="1x", module=W25Q64JW(Codes.READ_1_1_1), with_master=True)

        # HyperRAM ---------------------------------------------------------------------------------
        if with_hyperram:
            self.submodules.hyperram = HyperRAM(platform.request("hyperram"), latency=7, sys_clk_freq=sys_clk_freq)
            self.bus.add_slave("main_ram", slave=self.hyperram.bus, region=SoCRegion(origin=0x40000000, size=32*1024*1024))

        # Ethernet / Etherbone ---------------------------------------------------------------------
        if with_ethernet or with_etherbone:
            platform.add_extension(efinix_titanium_ti60_f225_dev_kit.rgmii_ethernet_qse_ios("P1"))
            pads = platform.request("eth", eth_phy)
            self.submodules.ethphy = LiteEthPHYRGMII(
                platform           = platform,
                clock_pads         = platform.request("eth_clocks", eth_phy),
                pads               = pads,
                with_hw_init_reset = False)
            if with_ethernet:
                self.add_ethernet(phy=self.ethphy, software_debug=True)
            if with_etherbone:
                self.add_etherbone(phy=self.ethphy)

            # FIXME: Avoid this.
            platform.toolchain.excluded_ios.append(platform.lookup_request("eth_clocks").tx)
            platform.toolchain.excluded_ios.append(platform.lookup_request("eth_clocks").rx)
            platform.toolchain.excluded_ios.append(platform.lookup_request("eth").tx_data)
            platform.toolchain.excluded_ios.append(platform.lookup_request("eth").tx_ctl)
            platform.toolchain.excluded_ios.append(platform.lookup_request("eth").rx_data)
            platform.toolchain.excluded_ios.append(platform.lookup_request("eth").mdio)

            # Extension board on P2 + External Logic Analyzer.
            _pmod_ios = [
                ("debug", 0, Pins(
                    "L11", # GPIOR_P_15
                    "K11", # GPIOR_N_15
                    "N10", # GPIOR_P_12
                    "M10", # GPIOR_N_12
                    ),
                    IOStandard("1.8_V_LVCMOS")
                ),
            ]
            platform.add_extension(_pmod_ios)
            debug = platform.request("debug")
            self.comb += debug[0].eq(self.ethphy.tx.sink.valid)
            self.comb += debug[1].eq(self.ethphy.tx.sink.data[0])
            self.comb += debug[2].eq(self.ethphy.tx.sink.data[1])

# Build --------------------------------------------------------------------------------------------

def main():
    from litex.soc.integration.soc import LiteXSoCArgumentParser
    parser = LiteXSoCArgumentParser(description="LiteX SoC on Efinix Titanium Ti60 F225 Dev Kit")
    target_group = parser.add_argument_group(title="Target options")
    target_group.add_argument("--build",          action="store_true", help="Build design.")
    target_group.add_argument("--load",           action="store_true", help="Load bitstream.")
    target_group.add_argument("--flash",          action="store_true", help="Flash bitstream.")
    target_group.add_argument("--sys-clk-freq",   default=200e6,       help="System clock frequency.")
    target_group.add_argument("--with-spi-flash", action="store_true", help="Enable SPI Flash (MMAPed).")
    target_group.add_argument("--with-hyperram",  action="store_true", help="Enable HyperRAM.")
    sdopts = target_group.add_mutually_exclusive_group()
    sdopts.add_argument("--with-spi-sdcard",      action="store_true", help="Enable SPI-mode SDCard support.")
    sdopts.add_argument("--with-sdcard",          action="store_true", help="Enable SDCard support.")
    ethopts = target_group.add_mutually_exclusive_group()
    ethopts.add_argument("--with-ethernet",        action="store_true",              help="Enable Ethernet support.")
    ethopts.add_argument("--with-etherbone",       action="store_true",              help="Enable Etherbone support.")
    target_group.add_argument("--eth-ip",          default="192.168.1.50", type=str, help="Ethernet/Etherbone IP address.")
    target_group.add_argument("--eth-phy",         default=0, type=int,              help="Ethernet PHY: 0 (default) or 1.")
    builder_args(parser)
    soc_core_args(parser)
    args = parser.parse_args()

    soc = BaseSoC(
        sys_clk_freq   = int(float(args.sys_clk_freq)),
        with_spi_flash = args.with_spi_flash,
        with_hyperram  = args.with_hyperram,
        with_ethernet  = args.with_ethernet,
        with_etherbone = args.with_etherbone,
        eth_ip         = args.eth_ip,
        eth_phy        = args.eth_phy,
         **soc_core_argdict(args))
    if args.with_spi_sdcard:
        soc.add_spi_sdcard()
    if args.with_sdcard:
        soc.add_sdcard()
    builder = Builder(soc, **builder_argdict(args))
    if args.build:
        builder.build()

    if args.load:
        prog = soc.platform.create_programmer()
        prog.load_bitstream(builder.get_bitstream_filename(mode="sram"))

    if args.flash:
        from litex.build.openfpgaloader import OpenFPGALoader
        prog = OpenFPGALoader("titanium_ti60_f225")
        prog.flash(0, builder.get_bitstream_filename(mode="flash", ext=".hex")) # FIXME

if __name__ == "__main__":
    main()
