#!/bin/bash

#leyendas para el banner
leyendas=(
	"Hackea el mundo"
	"Conéctate y domina"
	"Explora el ciberespacio"
	"Seguridad es primordial"
	"Datos son poder"
	"Entra al laberinto digital"
	"La era de la información"
	"Resuelve el enigma binario"
	"Navega por la red oscura"
	"Descubre la verdad en línea"
)

# Función para seleccionar aleatoriamente una leyenda
seleccionar_leyenda() {
    rand=$[$RANDOM % ${#leyendas[@]}]
    echo "${leyendas[$rand]}"
}

#banner
echo "---------------------------------------------"
echo "|           c101ciberseg/MISTICKCRUZ        |"
echo "|____________________________________________"
echo "|                                           |"
echo "|      $(seleccionar_leyenda)            |"
echo "|                                           |"
echo "|___________________________________________|"
echo "|___________________________________________|"
echo "|___________Automatizar controles___________|"
echo "|___________________________________________|"
echo "..."
sleep 3
# parametros a automatizar

# Definición de las tareas
tarea1() {
    echo "Aumentando la memoria swap..."
    sudo swapon /home/c101ciberseg/swapfile
    echo "Tarea 1 completada."
}

tarea2() {
    echo "Reglas de iptables..."
    sudo /home/c101ciberseg/iptables/ipt-reglas.sh
    sleep 3
    sudo iptables -L -n --line-numbers 
    echo "Tarea 2 completada."
}

tarea3() {
    echo "Iniciar Suricata..."
    sudo suricata -c /etc/suricata/suricata.yaml -i eth0
    echo "Tarea 3 completada."
}

mostrar_menu() {
    echo "Seleccione una tarea para ejecutar:"
    echo "1. Aumento de memoria swap 20GB"
    echo "2. Activar Iptables"
    echo "3. Inicia Suricata"
    echo "4. Salir"
}

# Bucle principal
while true; do
    mostrar_menu
    read -p "Ingrese el número de la tarea que desea ejecutar (o 4 para salir): " opcion

    case $opcion in
        1)
            tarea1
            ;;
        2)
            tarea2
            ;;
        3)
            tarea3 &
            ;;
        4)
            echo "Saliendo del programa..."
            break
            ;;
        *)
            echo "Opción no válida. Por favor, intente de nuevo."
            ;;
    esac

    read -p "Presione Enter para continuar..."
done

