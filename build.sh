#!/bin/bash

# Répertoires de sortie pour les fichiers objets et exécutables
OUTPUT_DIR_32="asm32"
OUTPUT_DIR_64="asm64"

# Liste des fichiers source
SOURCE_FILES=("asm01" "asm02" "asm03" "asm04" "asm05" "asm06")

# Assembler et lier les fichiers pour l'architecture 32 bits
for file in "${SOURCE_FILES[@]}"; do
    as --32 -o "$OUTPUT_DIR_32/$file.o" "$OUTPUT_DIR_32/$file.s"
    ld -m elf_i386 -o "$OUTPUT_DIR_32/$file" "$OUTPUT_DIR_32/$file.o"
done

# Assembler et lier les fichiers pour l'architecture 64 bits
for file in "${SOURCE_FILES[@]}"; do
    as -o "$OUTPUT_DIR_64/$file.o" "$OUTPUT_DIR_64/$file.s"
    ld -o "$OUTPUT_DIR_64/$file" "$OUTPUT_DIR_64/$file.o"
done
