# Settings for RISCV 32-bit toolchain.
TARGET_ARCH := riscv32
TARGET_TOOLCHAIN_PREFIX := riscv32-unknown-elf-

RISCV_ARCH := rv32imc_zicsr
RISCV_ABI := ilp32
RISCV_CODE_MODEL := medany

# Allow additional flags on the command line for debugging.
RISCV_EXTRA_CFLAGS :=

PLATFORM_FLAGS = \
  -march=$(RISCV_ARCH) \
  -mabi=$(RISCV_ABI) \
  -mcmodel=$(RISCV_CODE_MODEL) \
  -mexplicit-relocs \
  -fno-builtin-printf \
  -DTF_LITE_MCU_DEBUG_LOG \
  -DTF_LITE_USE_GLOBAL_CMATH_FUNCTIONS \
  -funsigned-char \
  -fno-delete-null-pointer-checks \
  -fomit-frame-pointer

CXXFLAGS += $(PLATFORM_FLAGS) \
  -fpermissive \
  -fno-use-cxa-atexit \
  -DTF_LITE_USE_GLOBAL_MIN \
  -DTF_LITE_USE_GLOBAL_MAX

CCFLAGS += $(PLATFORM_FLAGS)

BUILD_TYPE := micro

TARGET_DEFAULT_TOOLCHAIN_ROOT := /Users/tuhoang/riscv32/bin/
TARGET_TOOLCHAIN_ROOT := $(TARGET_DEFAULT_TOOLCHAIN_ROOT)

# See http://b/158651472 for why memory arena threshold test is disabled.
EXCLUDED_TESTS := \
  $(TENSORFLOW_ROOT)tensorflow/lite/micro/memory_arena_threshold_test.cc

MICROLITE_TEST_SRCS := $(filter-out $(EXCLUDED_TESTS), $(MICROLITE_TEST_SRCS))

CCFLAGS += $(RISCV_EXTRA_CFLAGS)
CXXFLAGS += $(RISCV_EXTRA_CFLAGS)

# This disables the "linker relaxation" optimization, which produced incorrect code.
# TODO(b/279805615): Check whether this is fixed in newer versions of the toolchain.
LDFLAGS += -mno-relax

include $(MAKEFILE_DIR)/ext_libs/eyalroz_printf.inc

