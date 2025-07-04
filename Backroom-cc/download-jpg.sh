#!/bin/bash

# Fichier source
input_file="output.txt"

# Créer dossier de téléchargement
mkdir -p downloads

# Lire chaque ligne
while IFS=";" read -r alt urlpath; do
    # Nettoyer nom (au cas où il y a des espaces)
    alt_clean=$(echo "$alt" | tr -d '[:space:]')

    # Nombre aléatoire à 2 chiffres
    rnd=$(shuf -i 10-99 -n 1)

    # URL complète
    full_url="https://www.backroomcastingcouch.com${urlpath}"

    # Nom de fichier
    filename="${alt_clean}_${rnd}.jpg"

    echo "Téléchargement de $full_url → downloads/$filename"

    # Télécharger
    curl -s -o "downloads/$filename" -L "$full_url"

done < "$input_file"

echo "Tous les téléchargements sont terminés !"
