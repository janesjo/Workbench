# HelloWorld /w printf
# hello_asm2.s
# as hello_asm2.s -o hello_asm2.o
# ld hello_asm2.o -e _main -lc -o hello_asm2
.section __DATA,__data
str:
  .asciz "Hello world!\n"

.section __TEXT,__text
.globl _main
_main:
  pushq %rbp
  movq %rsp, %rbp
  movq str@GOTPCREL(%rip), %rdi
  movb $0, %al
  callq _printf
  popq %rbp
  movl $0x2000001, %eax
  syscall