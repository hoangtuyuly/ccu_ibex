# Generalized version of test-eptri script

from os import environ

import cocotb
from cocotb.utils import get_sim_time
from cocotb_tb.harness import get_harness
from cocotb.result import TestFailure
from cocotb_usb.device import UsbDevice
from cocotb_usb.usb.endpoint import EndpointType
from cocotb_usb.usb.pid import PID
from cocotb_usb.descriptors import (Descriptor, getDescriptorRequest,
                                    FeatureSelector, USBDeviceRequest,
                                    setFeatureRequest)
from cocotb_usb.descriptors.cdc import (setLineCoding, setControlLineState,
                                        getLineCoding, LineCodingStructure)


descriptorFile = environ['TARGET_CONFIG']
model = UsbDevice(descriptorFile)


@cocotb.test(skip=True)
def test_control_setup(dut):
    harness = get_harness(dut)
    harness.max_packet_size = model.deviceDescriptor.bMaxPacketSize0
    yield harness.reset()
    yield harness.wait(10, units="us")

    yield harness.port_reset(5)
    yield harness.connect()
    yield harness.wait(10, units="us")
    # After waiting (bus inactivity) let's start with SOF
    yield harness.host_send_sof(0x01)
    # Device is at address 0 after reset
    yield harness.transaction_setup(
        0,
        setFeatureRequest(FeatureSelector.ENDPOINT_HALT,
                          USBDeviceRequest.Type.ENDPOINT, 0))
    harness.packet_deadline = get_sim_time("us") + harness.MAX_PACKET_TIME
    yield harness.transaction_data_in(0, 0, [])


@cocotb.test(skip=True)
def test_control_transfer_in(dut):
    harness = get_harness(dut)
    harness.max_packet_size = model.deviceDescriptor.bMaxPacketSize0
    yield harness.reset()
    yield harness.wait(10, units="us")

    yield harness.port_reset(5)
    yield harness.connect()
    yield harness.wait(10, units="us")
    # After waiting (bus inactivity) let's start with SOF
    yield harness.host_send_sof(0x01)
    DEVICE_ADDRESS = 20
    yield harness.set_device_address(DEVICE_ADDRESS, skip_recovery=True)
    yield harness.control_transfer_in(
        DEVICE_ADDRESS,
        getDescriptorRequest(descriptor_type=Descriptor.Types.DEVICE,
                             descriptor_index=0,
                             lang_id=0,
                             length=18), model.deviceDescriptor.get())


@cocotb.test(skip=True)
def test_enumeration(dut):
    harness = get_harness(dut)
    harness.max_packet_size = model.deviceDescriptor.bMaxPacketSize0
    yield harness.reset()
    yield harness.wait(10, units="us")

    yield harness.port_reset(5)
    yield harness.connect()
    yield harness.wait(10, units="us")
    # After waiting (bus inactivity) let's start with SOF
    yield harness.host_send_sof(0x01)
    yield harness.get_device_descriptor(response=model.deviceDescriptor.get())

    DEVICE_ADDRESS = 10

    yield harness.set_device_address(DEVICE_ADDRESS, skip_recovery=True)
    # There is a longish recovery period after setting address, so let's send
    # a SOF to make sure DUT doesn't suspend
    yield harness.host_send_sof(0x02)
    yield harness.get_configuration_descriptor(
        length=9,
        # Device must implement at least one configuration
        response=model.configDescriptor[1].get()[:9])

    total_config_len = model.configDescriptor[1].wTotalLength
    yield harness.get_configuration_descriptor(
        length=total_config_len,
        response=model.configDescriptor[1].get()[:total_config_len])

    # Does the device report any string descriptors?
    str_to_check = []
    for idx in (
                model.deviceDescriptor.iManufacturer,
                model.deviceDescriptor.iProduct,
                model.deviceDescriptor.iSerialNumber):
        if idx != 0:
            str_to_check.append(idx)

    # If the device implements string descriptors, let's try reading them
    if str_to_check != []:
        yield harness.get_string_descriptor(
          lang_id=Descriptor.LangId.UNSPECIFIED,
          idx=0,
          response=model.stringDescriptor[0].get())

        lang_id = model.stringDescriptor[0].wLangId[0]
        for idx in str_to_check:
            yield harness.get_string_descriptor(
                lang_id=lang_id,
                idx=idx,
                response=model.stringDescriptor[lang_id][idx].get())

    yield harness.set_configuration(1)
    # Device should now be in "Configured" state
    # TODO: Class-specific config



@cocotb.test(skip=True)
def test_basic_cdc_transfer(dut):
    harness = get_harness(dut)
    harness.max_packet_size = model.deviceDescriptor.bMaxPacketSize0
    yield harness.reset()
    yield harness.wait(5, units="us")

    dut._log.info("[Enumerating device]")

    DEVICE_ADDRESS = 8

    yield harness.port_reset(5)
    yield harness.connect()
    yield harness.wait(5, units="us")
    # After waiting (bus inactivity) let's start with SOF
    yield harness.host_send_sof(0x01)
    yield harness.get_device_descriptor(response=model.deviceDescriptor.get())

    yield harness.set_device_address(DEVICE_ADDRESS, skip_recovery=True)
    # There is a longish recovery period after setting address, so let's send
    # a SOF to make sure DUT doesn't suspend
    yield harness.host_send_sof(0x02)
    yield harness.get_configuration_descriptor(
        length=9,
        # Device must implement at least one configuration
        response=model.configDescriptor[1].get()[:9])

    total_config_len = model.configDescriptor[1].wTotalLength
    yield harness.get_configuration_descriptor(
        length=total_config_len,
        response=model.configDescriptor[1].get()[:total_config_len])

    yield harness.set_configuration(1)
    # Device should now be in "Configured" state

    INTERFACE = 1
    # Values from TinyFPGA-Bootloader ep_rom
    line_coding = LineCodingStructure(115200,
                                      LineCodingStructure.STOP_BITS_1,
                                      LineCodingStructure.PARITY_NONE,
                                      LineCodingStructure.DATA_BITS_8)

    dut._log.info("[Getting line coding]")
    yield harness.control_transfer_in(
            DEVICE_ADDRESS,
            getLineCoding(INTERFACE),
            line_coding.get())

    line_coding.dwDTERate = 115200
    line_coding.bCharFormat = LineCodingStructure.STOP_BITS_1
    dut._log.info("[Setting line coding]")
    yield harness.control_transfer_out(
            DEVICE_ADDRESS,
            setLineCoding(INTERFACE),
            line_coding.get())

    dut._log.info("[Setting control line state]")
    yield harness.control_transfer_out(
            DEVICE_ADDRESS,
            setControlLineState(
                interface=0,
                rts=0,
                dtr=0),
            None)
    
    dut._log.info("[Setting control line state]")
    yield harness.control_transfer_out(
            DEVICE_ADDRESS,
            setControlLineState(
                interface=0,
                rts=1,
                dtr=0),
            None)

    dut._log.info("[Setting control line state]")
    yield harness.control_transfer_out(
            DEVICE_ADDRESS,
            setControlLineState(
                interface=0,
                rts=0,
                dtr=1),
            None)
    
    dut._log.info("[Setting control line state]")
    yield harness.control_transfer_out(
            DEVICE_ADDRESS,
            setControlLineState(
                interface=0,
                rts=1,
                dtr=1),
            None)

@cocotb.test(skip=True)
def test_csr_write(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()

    # Test that CSR is available, even though this doesn't do anything
    yield harness.write(harness.csrs['uart_tuning_word'], 10)
    
    

@cocotb.test(skip=True)
def test_csr_read(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()

    # Test that CSR is available, even though this doesn't do anything
    yield harness.write(harness.csrs['uart_tuning_word'], 10)
    v = yield harness.read(harness.csrs['uart_tuning_word'])
    if v != 10:
        raise TestFailure("Failed to update tuning_word")
    

@cocotb.test(skip=False)
def test_uart_tx_usb_rx(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()

    
    yield harness.write(harness.csrs['uart_configured'], 0x01)

    # Attempt a write to Transmit a byte out
    yield harness.write(harness.csrs['uart_rxtx'], 0x41)

    # Expect data comes into the PC
    dut._log.info("[Receiving data]")
    yield harness.host_recv(PID.DATA0, 0,2, [0x41] )

    

@cocotb.test(skip=False)
def test_uart_tx_usb_rx_dual(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()


    yield harness.write(harness.csrs['uart_configured'], 0x01)

    # Attempt a write to Transmit a byte out
    yield harness.write(harness.csrs['uart_rxtx'], 0x41)

    # Expect data comes into the PC
    dut._log.info("[Receiving data]")
    yield harness.host_recv(PID.DATA0, 0,2, [0x41])

    # Attempt a write to Transmit a byte out
    yield harness.write(harness.csrs['uart_rxtx'], 0x42)

    # Expect data comes into the PC, Note swap from DATA0 to DATA1
    dut._log.info("[Receiving data]")
    yield harness.host_recv(PID.DATA1, 0,2, [0x42])


@cocotb.test(skip=False)
def test_uart_tx_usb_rx_small_packet(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()


    yield harness.write(harness.csrs['uart_configured'], 0x01)

    # Attempt a write to Transmit a byte out
    yield harness.write(harness.csrs['uart_rxtx'], 0x41)
    yield harness.write(harness.csrs['uart_rxtx'], 0x42)
    yield harness.write(harness.csrs['uart_rxtx'], 0x43)
    yield harness.write(harness.csrs['uart_rxtx'], 0x44)

    # Expect data comes into the PC
    dut._log.info("[Receiving data]")
    yield harness.host_recv(PID.DATA0, 0,2, [0x41])
    
    # Expect data comes into the PC, Note swap from DATA0 to DATA1
    dut._log.info("[Receiving data]")
    yield harness.host_recv(PID.DATA1, 0,2, [0x42, 0x43, 0x44 ])

    



@cocotb.test(skip=True)
def test_uart_tx_usb_rx_large_packet(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()


    yield harness.write(harness.csrs['uart_configured'], 0x01)

    # Attempt a write to Transmit a byte out
    for i in range(10):
        yield harness.write(harness.csrs['uart_rxtx'], i)

    # Expect data comes into the PC
    dut._log.info("[Receiving data]")
    yield harness.host_recv(PID.DATA0, 0,2, [0])
    
    # Expect data comes into the PC, Note swap from DATA0 to DATA1
    dut._log.info("[Receiving data]")
    yield harness.host_recv(PID.DATA1, 0,2, [])


@cocotb.test(skip=False)
def test_usb_tx_uart_rx(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()


    yield harness.write(harness.csrs['uart_configured'], 0x01)

    dut._log.info("[Transmiting data]")
    out_value = 0x41
    yield harness.host_send(PID.DATA0, 0,2, [out_value], PID.ACK)
    
    yield harness.wait(10, units="us")

    # Expect data via UART interface
    in_value = yield harness.read(harness.csrs['uart_rxtx'])
    if in_value != out_value:
        raise TestFailure(f"Value Error: {in_value} != {out_value}")

@cocotb.test(skip=False)
def test_usb_tx_uart_rx_busy(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()


    yield harness.write(harness.csrs['uart_configured'], 0x01)

    # fill buffer, statemachine will be busy waiting on FIFO drain
    dut._log.info("[Transmiting data]")
    out_value = [i for i in range(10)]
    yield harness.host_send(PID.DATA0, 0,2, out_value, PID.ACK)
    
    # attempt a new OUT, expect NAK
    yield harness.host_send(PID.DATA1, 0,2, [0x41], PID.NAK)

    yield harness.wait(10, units="us")

    # Expect data via UART interface
    for d in out_value:
        in_value = yield harness.read(harness.csrs['uart_rxtx'])
        yield harness.write(harness.csrs['uart_ev_pending'], 2)
        if in_value != d:
            raise TestFailure(f"Value Error: {in_value} != {d}")


@cocotb.test(skip=False)
def test_usb_tx_uart_rx_flood_busy(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()


    yield harness.write(harness.csrs['uart_configured'], 0x01)

    # fill buffer, statemachine will be busy waiting on FIFO drain
    dut._log.info("[Transmiting data]")
    out_value = [i for i in range(5)]
    for d in out_value:
        yield harness.host_send(PID.DATA0, 0,2, [d], PID.ACK)
    
    # attempt a new OUT, expect NAK
    yield harness.host_send(PID.DATA1, 0,2, [0x41], PID.NAK)

    yield harness.wait(10, units="us")

    # Expect data via UART interface
    for d in out_value:
        in_value = yield harness.read(harness.csrs['uart_rxtx'])
        yield harness.write(harness.csrs['uart_ev_pending'], 2)
        if in_value != d:
            raise TestFailure(f"Value Error: {in_value} != {d}")

@cocotb.test(skip=False)
def test_usb_tx_uart_rx_dual(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()


    yield harness.write(harness.csrs['uart_configured'], 0x01)

    out_value = 0x41
    dut._log.info("[Transmiting data]")
    yield harness.host_send(PID.DATA0, 0,2, [out_value], PID.ACK)
    
    yield harness.wait(10, units="us")

    # Expect data via UART interface
    flag = yield harness.read(harness.csrs['uart_ev_pending'])
    if (flag & 2) != 2:
        raise TestFailure(f"uart_ev_pending not set (value:{flag})")

    in_value = yield harness.read(harness.csrs['uart_rxtx'])
    if in_value != out_value:
        raise TestFailure(f"Value Error: {in_value} != {out_value}")
    # clear FLAG
    yield harness.write(harness.csrs['uart_ev_pending'], 2)

    
    flag = yield harness.read(harness.csrs['uart_rxempty'])
    if (flag) != 1:
        raise TestFailure(f"uart_rxempty not 1 (value:{flag})")
    
    out_value = 0x61
    dut._log.info("[Transmiting data]")
    yield harness.host_send(PID.DATA1, 0,2, [out_value], PID.ACK)
    
    yield harness.wait(10, units="us")

    # Expect data via UART interface
    flag = yield harness.read(harness.csrs['uart_ev_pending'])
    if (flag & 2) != 2:
        raise TestFailure(f"uart_ev_pending not set (value:{flag})")

    in_value = yield harness.read(harness.csrs['uart_rxtx'])
    if in_value != out_value:
        raise TestFailure(f"Value Error: {in_value} != {out_value}")

    # clear FLAG
    yield harness.write(harness.csrs['uart_ev_pending'], 2)

    flag = yield harness.read(harness.csrs['uart_rxempty'])
    if (flag) != 1:
        raise TestFailure(f"uart_rxempty not 1 (value:{flag})")


@cocotb.test(skip=False)
def test_usb_tx_uart_rx_multi(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()


    yield harness.write(harness.csrs['uart_configured'], 0x01)

    dut._log.info("[Transmiting data]")
    yield harness.host_send(PID.DATA0, 0,2, [0x41, 0x42, 0x43, 0x44], PID.ACK)
    
    yield harness.wait(10, units="us")

    flag = yield harness.read(harness.csrs['uart_ev_pending'])
    if (flag & 2) != 2:
        raise TestFailure(f"uart_ev_pending not set (value:{flag})")
    
    # Expect data via UART interface
    for d in [0x41, 0x42, 0x43, 0x44]:

        v = yield harness.read(harness.csrs['uart_rxtx'])
        if v != d:
            raise TestFailure("TX Value != RX Value")
        # clear FLAG
        yield harness.write(harness.csrs['uart_ev_pending'], 2)

        
    flag = yield harness.read(harness.csrs['uart_rxempty'])
    if (flag) != 1:
        raise TestFailure(f"uart_rxempty not 1 (value:{flag})")
    



@cocotb.test(skip=False)
def test_usb_tx_uart_rx_large(dut):
    harness = get_harness(dut)
    yield harness.reset()
    yield harness.connect()


    yield harness.write(harness.csrs['uart_configured'], 0x01)

    data = [i for i in range(32)]

    dut._log.info("[Transmiting data]")
    yield harness.host_send(PID.DATA0, 0,2, data, PID.ACK)
    
    yield harness.wait(10, units="us")

    flag = yield harness.read(harness.csrs['uart_ev_pending'])
    if (flag & 2) != 2:
        raise TestFailure(f"uart_ev_pending not set (value:{flag})")
    
    # Expect data via UART interface
    for d in data:

        v = yield harness.read(harness.csrs['uart_rxtx'])
        if v != d:
            raise TestFailure("TX Value != RX Value")
        # clear FLAG
        yield harness.write(harness.csrs['uart_ev_pending'], 2)

        
    flag = yield harness.read(harness.csrs['uart_rxempty'])
    if (flag) != 1:
        raise TestFailure(f"uart_rxempty not 1 (value:{flag})")
    
