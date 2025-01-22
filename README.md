# Custom Function Unit (CFU) Integration with Ibex Core

This project focuses on designing and integrating a Custom Function Unit (CFU) into the Ibex core, a RISC-V-based processor, to optimize TensorFlow Lite operations for edge AI applications. The CFU enhances performance for machine learning workloads by enabling SIMD (Single Instruction, Multiple Data) multiply-and-accumulate operations, which are critical for efficient deep learning inference on resource-constrained devices.

## Clone the Project Repository
```
git clone https://github.com/hoangtuyuly/ccu_ibex
```

## Set up RISC-V toolchain with custom instruction
### 1. Clone the RISC-V GNU/GCC toolchain along with its submodules: 
```
git clone https://github.com/riscv/riscv-gnu-toolchain.git cd riscv-gnu-toolchain
```

### 2. Install the prerequisites (for Ubuntu): 
```
sudo apt-get install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev
```

### 3. Build the RISC-V GNU/GCC for RISC-V 32IMC: 
```
export RISCV=$HOME/riscv32 export PATH=$PATH:$RISCV/bin ./configure --prefix=$RISCV --with-arch=rv32imc_zicsr_zifencei --with-abi=ilp32 --enable-multilib make
```

### 4. Clone the RISC-V Opcodes Tool 
```
git clone https://github.com/riscv/riscv-opcodes cd riscv-opcodes
```

### 5. Define Your Custom Instruction Add the new instruction (ccu) to one of the opcodes-*.h files. Example: 
```
ccu rd rs1 rs2 31..25=0b1010100 14..12=0b000 6..2=0b01100 1..0=0b11
```

### 6. Generate the MATCH and MASK values: 
```
cat | ./parse-opcodes -c > instructionInfo.h
```
Note Example output in `instructionInfo.h`:
```
#define MATCH_CCU 0x12345678 // Example #define MASK_CCU 0xfe00707f DECLARE_INSN(ccu, MATCH_CCU, MASK_CCU)
```

### 7. Update riscv-binutils-gdb/include/opcode/riscv-opc.h: Add the #define and DECLARE_INSN entries for your custom instruction. Update riscv-binutils-gdb/opcodes/riscv-opc.c: Add the custom instruction: 
```
{"ccu", 0, "d,s,t", MATCH_CCU, MASK_CCU, match_opcode, 0 }, Rebuild the GNU/GCC toolchain: cd riscv-gnu-toolchain make
```

## Run tensorflow lite person detection model cd tflite-micro

### Follow the build instructions from the TensorFlow Lite Micro documentation to set up the environment: 
```
make -f tensorflow/lite/micro/tools/make/Makefile third_party_downloads make -f tensorflow/lite/micro/tools/make/Makefile test_person_detection_test TARGET=riscv32_generic
```

### Additional makefile targets 
```
make -f tensorflow/lite/micro/tools/make/Makefile person_detection TARGET=riscv32_generic
```
```
make -f tensorflow/lite/micro/tools/make/Makefile person_detection_bin TARGET=riscv32_generic
```
```
make -f tensorflow/lite/micro/tools/make/Makefile run_person_detection TARGET=riscv32_generic
```

The run_person_detection target will produce continuous output similar to the following: 
```
person score:-72 no person score 72
```

## Run on Person Detection Binary File with Ibex

### 1. Add a Custom Unit Function to Ibex

- Create and integrate your custom unit function in Verilog. For example, see `ibex/rtl/ibex_ccu.sv` in the Ibex repository.

### 2. Build a Simulation of the System

From the Ibex repository root, run the following command to set up and build a simulation:

```
fusesoc --cores-root=. run --target=sim --setup --build
lowrisc:ibex:ibex_simple_system $(util/ibex_config.py opentitan fusesoc_opts)
```

### 3. Run the Compiled Program

Run the person detection binary file on the Ibex simulator:

```
./build/lowrisc_ibex_ibex_simple_system_0/sim-verilator/Vibex_simple_system --meminit=ram,./person_detection
```

### Reference

For more detailed information, refer to:

- [lowRISC IBEX](https://github.com/lowRISC/ibex/tree/master/examples/simple_system)
- [TFLite Micro Person Detection Example](https://github.com/tensorflow/tflite-micro/tree/main/tensorflow/lite/micro/examples/person_detection)
- [Adding Custom Instructions in the RISC-V ISA](https://hsandid.github.io/posts/risc-v-custom-instruction/)
- [Custom Function Units](https://cfu-playground.readthedocs.io/en/latest/crash-course/riscv.html)

