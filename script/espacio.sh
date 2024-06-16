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
echo "|______Automatizar limpieza-disco___________|"
echo "|___________________________________________|"
echo "..."
sleep 3
# parametros a automatizar

# Definición de las tareas

tarea1() {
    echo "Este es el espacio en disco..."
    df -h
    sleep 3
    echo "Completado..."
}

tarea2() {
    echo "listando los 20 archivos mas grandes de var/... " 
    sleep 3
    sudo du -ah /var | sort -n -r | head -n 20
    echo "Completado..."
}

tarea3() {
    echo "Limpiando los logs..."
    sudo find /var/log -type f -name "*.log" -exec rm -f {} \;
    sleep 5
    echo "Completado..."
}

tarea4() {
    echo "comprimiendo los logs..."
    sudo find /var/log -type f -name "*.log" -exec gzip {} \;
    sleep 5
    echo "Completado..."
}
tarea5() {
    echo "eliminando cache de aplicaciones y paqutes ..."
    sudo  du -sh /var/cache/apt
    sleep 3
    sudo  apt-get clean
    sleep 3
    echo "Completado..."
}
tarea6() {
    echo "Eliminando archivos temporales"
    sudo  rm -rf /var/tmp/*
    sleep 3
    echo "Completado..."
}

mostrar_menu() {
    echo "Seleccione una tarea para ejecutar:"
    echo "1. Ver espacio en disco"
    echo "2. listar var/"
    echo "3. Limpiar los logs"
    echo "4. Comprimir logs"
    echo "5. limpiar chache de aplicaciones y paquetes"
    echo "6. limpiando archivos temporales"
}

# Bucle principal
while true; do
    mostrar_menu
    read -p "Ingrese el número de la tarea que desea ejecutar (o 7 para salir): " opcion

    case $opcion in
        1)
            tarea1
            ;;
        2)
            tarea2
            ;;
        3)
            tarea3
            ;;
	4)
            tarea4
            ;;
	5)
            tarea5
            ;;
	6)
            tarea6
            ;;




        7)
            echo "Saliendo del programa..."
            break
            ;;
        *)
            echo "Opción no válida. Por favor, intente de nuevo."
            ;;
    esac

    read -p "Presione Enter para continuar..."
done
     
