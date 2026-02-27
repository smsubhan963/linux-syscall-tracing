# Linux System Call Tracing (strace) — ASM vs C

This mini project compares how a tiny **Assembly** program and a simple **C** program interact with Linux at runtime.
I used `strace` / `strace -c` to see the system calls each program makes, then wrote a small crash example to observe what happens when a program touches protected memory.

## What I did
- Traced a minimal ASM “hello” program (very few system calls)
- Traced a C “hello” program (more setup happening behind the scenes)
- Compared both with `strace -c` summaries
- Triggered a controlled crash and observed `SIGSEGV`

## Commands used
```bash
strace ./hello_asm
strace ./hello_c
strace -c ./hello_asm
strace -c ./hello_c
strace ./crash
