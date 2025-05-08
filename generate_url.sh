#!/bin/bash

# Fichier de sortie
output_file="urls.txt"

# Vider le fichier s'il existe déjà
> "$output_file"

# Générer les URL
for i in {291..330}; do
    echo "https://izap4u.com/zap/zap-$i/" >> "$output_file"
done

echo "URLs générées dans $output_file"
