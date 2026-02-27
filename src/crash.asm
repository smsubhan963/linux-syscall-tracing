section .text
    global _start

_start:
    ; Attempt to read from a restricted Kernel memory address
    ; This address is in "Ring 0" territory
    mov rax, [0xffffffff81000000]

    ; If the CPU let us get here, the system would be compromised.
    ; But we will never reach these next lines.
    mov rax, 60
    mov rdi, 0
    syscall
