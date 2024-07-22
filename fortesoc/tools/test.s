.section .text
.globl _start
.equ CONSTANT, 0xcafebabe
_start:

li a3,4
li a4,2
li a6,0x20
efpga a5,a4,a3 # x4 = x9*x13

