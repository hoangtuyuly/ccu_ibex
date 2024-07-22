from os import environ
from .host import UsbTestCDCUsb

def get_harness(dut, **kwargs):
    dut_csrs = environ['DUT_CSRS']  # We want a KeyError if this is unset
    harness = UsbTestCDCUsb(dut, dut_csrs, **kwargs)
    return harness
