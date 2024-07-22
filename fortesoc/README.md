
## Getting the compiler

There are a few (time-consuming) steps to get the compiler. 

This has been tested on WSL. Start an Ubuntu command terminal and ensure your WSL linux is up to date:

```
sudo apt-get update
sudo apt-get upgrade
```

### Clone the compiler

1. Create a directory to build the compiler and move to it

     ```
     mkdir compilerbuild
     cd compilerbuild
     ```

1. Now clone the compiler (This may take some time - there are several submodules!)

     ```
     git clone --recursive https://github.com/pulp-platform/pulp-riscv-gnu-toolchain
     cd pulp-riscv-gnu-toolchain/
     ```

### Add the efpga instruction

1. Edit the **riscv-opc header** file

     ```
     vi riscv-binutils-gdb/include/opcode/riscv-opc.h
     ```

     1. Add the following lines to the first #ifndef block ```#ifndef RISCV_ENCODING_H```
    
         ```c
         #define MATCH_EFPGA 0x200000b
         #define MASK_EFPGA  0xfe00707f
         ```
  
     1. Then add the following to the ```#ifdef DECLARE_INSN``` section

         ```c
         DECLARE_INSN(efpga, MATCH_EFPGA, MASK_EFPGA)
         ```

1. Edit the **riscv-opc C source** file

     ```
     vi riscv-binutils-gdb/opcodes/riscv-opc.c
     ```

     1. Add the following to the ```riscv_opcode riscv_opcodes[]``` array

         ```c
         {"efpga",     "I",   "d,s,t",  MATCH_EFPGA, MASK_EFPGA, match_opcode, 0 },
         ```

### Building

1. Getting everything you'll need:

     ```
     sudo apt-get install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex  texinfo gperf libtool patchutils bc zlib1g-dev
     ```

1. Configure the build

     ```
     ./configure --prefix=/opt/riscv --with-arch=rv32im --with-cmodel=medlow
     ```

1. Start the build (this will take some time)

     ```
     sudo make
     ```

## The ForteSoC project:
Clone the fortesoc repo and move to the tools directory:

```
git clone https://gitlab.com/attwood/fortesoc/
cd fortesoc/tools
```

Now compile the test application; compile using crt.s and riscv64-virt.ld 

```
/opt/riscv/bin/riscv32-unknown-elf-g++ test.c -ffreestanding -O0 -Wl,--gc-sections   -nostartfiles -nostdlib -nodefaultlibs -Wl,-T,riscv64-virt.ld crt.s -march=rv32im -fpic -fpermissive
```

Dump text section from the compiled binary

```
/opt/riscv/bin/riscv32-unknown-elf-objcopy -O binary --only-section=.init --only-section=.text --only-section=.rodata a.out foobar.text 
```

Convert instructions to hex format single code to a line 

```
hexdump -v -e '1/4 "%08x " "\n"' foobar.text > hex.txt 
```

### Generating 

run `python output.py` in the same directory of the hex file

Highlight the output from this python script, and replace the existing calls starting line 98 to 127 in the file fortesoc/bench/design_2.cpp

- [ ] :warning: ***this needs to be automated. create a file that is called from main in verilator.***



## Compiling and installing Verilator

Install the required packages
```
sudo apt-get install git perl python3 make autoconf g++ flex bison ccache libgoogle-perftools-dev numactl perl-doc libfl2 libfl-dev zlibc zlib1g zlib1g-dev 
```

Clone the verilator project and compile it
```
git clone https://github.com/verilator/verilator
cd verilator
autoconf 
./configure  
make -j       
sudo make install
```

type `make` in the fortesoc/fortesoc/bench directory to run the simulation 

## Download gtkwave

https://sourceforge.net/projects/gtkwave/


View the output of the functional simulation


fortesoc\bench\design_2\Vdesign_2_top.vcd

It can take some time to load depending on simulation size.










