This project focuses on designing and integrating a Custom Function Unit (CFU) into the Ibex core, a RISC-V-based processor, to optimize TensorFlow Lite operations for edge AI applications. The CFU is tailored to enhance performance for machine learning workloads by enabling SIMD (Single Instruction, Multiple Data) multiply-and-accumulate operations, critical for efficient deep learning inference on resource-constrained devices.

Pull the project repository git clone https://github.com/hoangtuyuly/ccu_ibex

Modify the RISC-V Toolchain Clone the RISC-V GNU/GCC toolchain along with its submodules: 
```
git clone https://github.com/riscv/riscv-gnu-toolchain.git cd riscv-gnu-toolchain
```

Install the prerequisites (for Ubuntu): 
```
sudo apt-get install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev
```

Build the RISC-V GNU/GCC for RISC-V 32IMC: 
```
export RISCV=$HOME/riscv32 export PATH=$PATH:$RISCV/bin ./configure --prefix=$RISCV --with-arch=rv32imc_zicsr_zifencei --with-abi=ilp32 --enable-multilib make
```

Clone the RISC-V Opcodes Tool 
```
git clone https://github.com/riscv/riscv-opcodes cd riscv-opcodes
```

Define Your Custom Instruction Add the new instruction (ccu) to one of the opcodes-*.h files. Example: 
```
ccu rd rs1 rs2 31..25=0b1010100 14..12=0b000 6..2=0b01100 1..0=0b11
```

Generate the MATCH and MASK values: 
```
cat | ./parse-opcodes -c > instructionInfo.h
```
Note the values in instructionInfo.h: #define MATCH_CCU 0x12345678 // Example #define MASK_CCU 0xfe00707f DECLARE_INSN(ccu, MATCH_CCU, MASK_CCU)

Update riscv-binutils-gdb/include/opcode/riscv-opc.h: Add the #define and DECLARE_INSN entries for your custom instruction. Update riscv-binutils-gdb/opcodes/riscv-opc.c: Add the custom instruction: 
```
{"ccu", 0, "d,s,t", MATCH_CCU, MASK_CCU, match_opcode, 0 }, Rebuild the GNU/GCC toolchain: cd riscv-gnu-toolchain make
```

Run tensorflow lite person detection model cd tflite-micro

Follow the build instructions from the TensorFlow Lite Micro documentation to set up the environment: 
```
make -f tensorflow/lite/micro/tools/make/Makefile third_party_downloads make -f tensorflow/lite/micro/tools/make/Makefile test_person_detection_test TARGET=riscv32_generic
```

Additional makefile targets 
```
make -f tensorflow/lite/micro/tools/make/Makefile person_detection TARGET=riscv32_generic make -f tensorflow/lite/micro/tools/make/Makefile person_detection_bin TARGET=riscv32_generic make -f tensorflow/lite/micro/tools/make/Makefile run_person_detection TARGET=riscv32_generic
```

The run_person_detection target will produce continuous output similar to the following: person score:-72 no person score 72
