#!/bin/bash

# Vérifier les arguments de ligne de commande
if [ $# -ne 1 ]; then
    echo "Utilisation : $0 <fichier_source_asm>"
    exit 1
fi

# Nom du fichier source en asm
SOURCE_FILE="$1"

# Nom du fichier objet de sortie
OBJ_FILE="${SOURCE_FILE%.s}.o"

# Assembler le fichier source en objet
as -o "$OBJ_FILE" "$SOURCE_FILE"

# Extraire le shellcode en hexadécimal
shellcode=$(objdump -d "$OBJ_FILE" | grep -o -E '([0-9a-f]{2} )+' | sed 's/ //g' | tr -d '\n')

# Afficher le shellcode
echo "Shellcode généré :"
echo "$shellcode"
