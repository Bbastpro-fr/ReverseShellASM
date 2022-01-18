# Reverse shell ASM

**RSA** is an assembly x86 code designed to connect the user to the attacker's machine and provide a shell.

# Files

- reverse.asm : Assembly code


## Notes

This project was realized in the school context, and is not destined to be really used. 
**It is inspired by found examples and is not optimized.**
**This is a test product, working only locally on port 4444**


# Installation
*1/ Get requirements*
```bash
sudo apt install -y git bintuils nasm
```
*2/ Download BSI*
```bash
git clone https://github.com/Bbastpro-fr/ReverseShellASM.git
```
*3/ Set Add execution rights*
```bash
cd ReverseShellASM
chmod +x *
```
*4/ Use Assembler*
```bash
nasm -f elf32 reverse.asm
```
*5/ Use Linker*
```bash
ld -m elf_i386 reverse.o -o <output name>
```
*6/ Enjoy*

# Usage

## As attacker
```bash
nc -lvp 4444
```
## As victim
```bash
./<output name>
```
