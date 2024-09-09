/* 
   Copyright lowRISC contributors.
   Licensed under the Apache License, Version 2.0, see LICENSE for details.
   SPDX-License-Identifier: Apache-2.0 
*/

OUTPUT_ARCH(riscv)

MEMORY
{
    ram   : ORIGIN = 0x00100000, LENGTH = 0xA0000    /* 640 kB */
    stack : ORIGIN = 0x001C0000, LENGTH = 0x10000    /* 64 kB (increased from 32 kB) */
}

/* Stack information variables */
_min_stack   = 0x2000;      /* 8K - minimum stack space to reserve */
_stack_len   = LENGTH(stack);
_stack_start = ORIGIN(stack) + LENGTH(stack);

_entry_point = _vectors_start + 0x80;
ENTRY(_entry_point)

/* The tohost address and fromhost address */
tohost   = 0x20008;
fromhost = _stack_start + 0x10;

SECTIONS
{
    .vectors :
    {
        . = ALIGN(4);
        _vectors_start = .;
        KEEP(*(.vectors))
        _vectors_end = .;
    } > ram

    .text : 
    {
        . = ALIGN(4);
        *(.text)
        *(.text.*)
    } > ram AT> ram

    .rodata : 
    {
        . = ALIGN(4);
        *(.srodata)
        *(.srodata.*)
        *(.rodata)
        *(.rodata.*)
    } > ram AT> ram

    .data : 
    {
        . = ALIGN(4);
        *(.sdata)
        *(.sdata.*)
        *(.data)
        *(.data.*)
    } > ram AT> ram

    .bss :
    {
        . = ALIGN(4);
        _bss_start = .;
        *(.sbss)
        *(.sbss.*)
        *(.bss)
        *(.bss.*)
        *(COMMON)
        _bss_end = .;
    } > ram AT> ram

    /* Ensure enough space for stack */
    .stack (NOLOAD) : 
    {
        . = ALIGN(4);
        . = . + _min_stack;
        . = ALIGN(4);
        stack = .;
        _stack = .;
    } > stack
}