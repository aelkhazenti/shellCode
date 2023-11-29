# ASM Shellcode Project

This project contains assembly language (ASM) programs and scripts for generating and executing shellcodes. The ASM programs are designed to work in both 32-bit (asm32) and 64-bit (asm64) architectures.

## Directories

- `asm32/`: Contains ASM source files and Makefile scripts for 32-bit architecture.
- `asm64/`: Contains ASM source files and Makefile scripts for 64-bit architecture.

## ASM Files

The ASM source files include the following:
- `asm01.s`: ASM program that returns 0.
- `asm02.s`: ASM program that displays "1337" and returns 0.
- `asm03.s`: ASM program that displays "1337" and returns 0 if the input is 42, otherwise 1.
- `asm04.s`: ASM program that returns 0 if the entered number is even, otherwise 1.
- `asm05.s`: ASM program that executes `asm01`.
- `asm06.s`: ASM program that executes `/bin/sh`.

## Scripts

- `Makefile`: Makefile scripts for assembling and linking ASM programs into executable files.
- `create_shellcode.sh`: Script to generate shellcodes from ASM programs.
- `build.sh`: Script to BUILD and link ASM files for both 32-bit and 64-bit architectures.

## Usage

1. Use the Makefile scripts to assemble and create executable files in 32-bit or 64-bit.
2. Use `create_shellcode.sh` to generate shellcodes from ASM programs.
3. Use `build.sh` to build all ASM programs for both 32-bit and 64-bit architectures.

## Usage

### 1. Directory Structure

Organize your assembly programs into two directories:

- `asm32`: Place your 32-bit assembly programs (with the `.s` extension) in this directory.
- `asm64`: Place your 64-bit assembly programs (with the `.s` extension) in this directory.

### 2. Compilation

To compile an assembly program, use the following command:

```sh
    make <target>
```


- `<target>` should be in the format `asm32/program` for 32-bit programs or `asm64/program` for 64-bit programs.

For example, to compile `asm01` in 32-bit mode, use the following command:

```sh
    make asm32/asm01
```

To compile `asm02` in 64-bit mode, use:

```sh
    make asm64/asm02
```


### Cleaning Up

You can remove compiled files and object files with the following command:

```sh
    make clean
```


## Example

Here's an example of how to compile an assembly program:

1. Create a file named `asm01.s` in the `asm32` directory with your 32-bit assembly code or `asm64` directory for 64-bit code.

2. Open a terminal and navigate to the directory containing the `Makefile`.

3. Compile `asm01.s` in 32-bit mode:

```sh
    make asm32/asm01
```
This will generate an executable file named `asm01` in the asm32 directory.

4. Run the compiled program:
```sh
    ./asm32/asm01
```