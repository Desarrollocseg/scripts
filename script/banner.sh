#!/bin/bash

# Banners cibernéticos aleatorios
banners=("██████╗░░█████╗░██████╗░░█████╗░███╗░░██╗"
"██╔══██╗██╔══██╗██╔══██╗██╔══██╗████╗░██║"
"██║░░██║██║░░██║██║░░██║██║░░██║██╔██╗██║"
"██║░░██║██║░░██║██║░░██║██║░░██║██║╚████║"
"██████╔╝╚█████╔╝██████╔╝╚█████╔╝██║░╚███║")

# Seleccionar un banner aleatorio
rand=$[$RANDOM % ${#banners[@]}]
banner="${banners[$rand]}"

# Imprimir el banner
echo "$banner"

