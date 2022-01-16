# ReverseShellASM
Reverse shell in Assembly x86


commands  
  ```apt install -y nasm binutils```  
  ```nasm -f elf32 reverse.asm```  
  ```ld -m elf_i386 reverse.o -o reverse_exe```  
  ```./reverse_exe```

Server is on 127.0.0.1, listening 4444
It's a demonstration programm
To start a easy server : ```nc -lvp 4444```
