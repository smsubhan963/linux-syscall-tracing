section .data

msg db 'Hello, OS Class!', 0xa
len equ $ - msg

section .text
global _start

_start:
    ; syscall: write(1, msg, len)
    mov rax, 1      ; syscall number for sys_write
    mov rdi, 1      ; file descriptor 1 (stdout)
    mov rsi, msg    ; pointer to message
    mov rdx, len    ; length of message
    syscall         ; TRAP to kernel

    ; syscall: exit(0)
    mov rax, 60     ; syscall number for sys_exit
    mov rdi, 0      ; exit code 0
    syscall         ; TRAP to kernel
