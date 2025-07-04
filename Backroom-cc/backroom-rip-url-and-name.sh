#!/bin/bash

# Fichier de sortie
output_file="output.txt"

# On vide le fichier de sortie au début
> "$output_file"

# Pour chaque lettre de a à z
for letter in {a..z}; do
    echo "Traitement de la lettre: $letter"

    # URL courante
    url="https://www.backroomcastingcouch.com/models/${letter}/models.html"

    # On lance le curl et on boucle sur chaque ligne contenant "contentthumbs"
    curl -s "$url" | grep "contentthumbs" | while read -r line; do
        # Extraire alt
        alt=$(echo "$line" | grep -oP 'alt="\K[^"]+')

        # Extraire src0_3x
        src=$(echo "$line" | grep -oP 'src0_3x="\K[^"]+')

        # Si on a bien trouvé src et alt, on écrit dans le fichier
        if [[ -n "$alt" && -n "$src" ]]; then
            echo "$alt;$src" >> "$output_file"
        fi
    done
done

echo "Extraction terminée ! Résultats dans $output_file"

