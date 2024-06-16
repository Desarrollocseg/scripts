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
echo "|______Automatizar servicios web___________|"
echo "|___________________________________________|"
echo "..."
sleep 3
# parametros a automatizar

# Definición de las tareas
tarea1() {
    echo "Iniciando Apache2..."
    systemctl start apache2
    sleep 3
    systemctl status apache2  
    echo "Tarea 1 completada."
}

tarea2() {
    echo "Iniciando Mysql..."
    systemctl start mysql
    sleep 3
    systemctl status mysql 
    echo "Tarea 2 completada."
}

mostrar_menu() {
    echo "Seleccione una tarea para ejecutar:"
    echo "1. Iniciar Apache"
    echo "2. Iniciar Mysql"
    echo "3. Salir"
}

# Bucle principal
while true; do
    mostrar_menu
    read -p "Ingrese el número de la tarea que desea ejecutar (o 3 para salir): " opcion

    case $opcion in
        1)
            tarea1
            ;;
        2)
            tarea2
            ;;
        
        3)
            echo "Saliendo del programa..."
            break
            ;;
        *)
            echo "Opción no válida. Por favor, intente de nuevo."
            ;;
    esac

    read -p "Presione Enter para continuar..."
done
