Custom Function Unit (CFU) Integration for TensorFlow Lite Optimization on Ibex Core

This project focuses on designing and integrating a Custom Function Unit (CFU) into the Ibex core, a RISC-V-based processor. The goal is to optimize TensorFlow Lite operations for edge AI applications. The CFU enhances performance for machine learning workloads by enabling SIMD (Single Instruction, Multiple Data) multiply-and-accumulate operations, which are critical for efficient deep learning inference on resource-constrained devices.

Project Setup

1. Clone the Project Repository
bash
Copy code
git clone https://github.com/hoangtuyuly/ccu_ibex
RISC-V Toolchain Setup

1. Clone the RISC-V GNU/GCC Toolchain
bash
Copy code
git clone https://github.com/riscv/riscv-gnu-toolchain.git
cd riscv-gnu-toolchain
2. Install Prerequisites (Ubuntu)
bash
Copy code
sudo apt-get install autoconf automake autotools-dev curl python3 \
libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex \
texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev
3. Build the RISC-V Toolchain
bash
Copy code
export RISCV=$HOME/riscv32
export PATH=$PATH:$RISCV/bin
./configure --prefix=$RISCV --with-arch=rv32imc_zicsr_zifencei --with-abi=ilp32 --enable-multilib
make
Add Custom Instruction to the Toolchain

1. Clone the RISC-V Opcodes Tool
bash
Copy code
git clone https://github.com/riscv/riscv-opcodes.git
cd riscv-opcodes
2. Define the Custom Instruction
Edit one of the opcodes-*.h files to add your custom instruction:

Copy code
ccu rd rs1 rs2 31..25=0b1010100 14..12=0b000 6..2=0b01100 1..0=0b11
3. Generate MATCH and MASK Values
Run the following command:

bash
Copy code
cat | ./parse-opcodes -c > instructionInfo.h
Note the generated values in instructionInfo.h:

c
Copy code
#define MATCH_CCU 0x12345678  // Example
#define MASK_CCU  0xfe00707f
DECLARE_INSN(ccu, MATCH_CCU, MASK_CCU)
4. Update Toolchain Files
Add the definitions to riscv-binutils-gdb/include/opcode/riscv-opc.h:
c
Copy code
#define MATCH_CCU 0x12345678
#define MASK_CCU  0xfe00707f
DECLARE_INSN(ccu, MATCH_CCU, MASK_CCU)
Modify riscv-binutils-gdb/opcodes/riscv-opc.c to include:
c
Copy code
{"ccu", 0, "d,s,t", MATCH_CCU, MASK_CCU, match_opcode, 0 },
5. Rebuild the Toolchain
bash
Copy code
cd riscv-gnu-toolchain
make
TensorFlow Lite Setup

1. Clone TensorFlow Lite Micro
bash
Copy code
cd tflite-micro
2. Build Environment and Test the Model
bash
Copy code
make -f tensorflow/lite/micro/tools/make/Makefile third_party_downloads
make -f tensorflow/lite/micro/tools/make/Makefile test_person_detection_test TARGET=riscv32_generic
Additional Makefile Targets

Build Targets
Compile the person detection example:
bash
Copy code
make -f tensorflow/lite/micro/tools/make/Makefile person_detection TARGET=riscv32_generic
Generate the binary file:
bash
Copy code
make -f tensorflow/lite/micro/tools/make/Makefile person_detection_bin TARGET=riscv32_generic
Run the model:
bash
Copy code
make -f tensorflow/lite/micro/tools/make/Makefile run_person_detection TARGET=riscv32_generic
Run Output
The run_person_detection target will produce output similar to:

yaml
Copy code
person score: -72
no person score: 72

