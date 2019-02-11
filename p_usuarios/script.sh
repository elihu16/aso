#!/bin/sh
NOM=$1

#cat /etc/passwd | grep $NOM

existe=$(grep -c '^$NOM:' /etc/passwd)

if [ $existe -eq 0 ]; then
    echo "El usuario $NOM existe"
    echo ""
cat /etc/passwd | grep $NOM
else
    echo "El usuario $NOM no existe"
    exit
fi

echo "Menu del usuario: $NOM"
echo "1) Ver directorio del Usuario"
echo "2) Generar carpeta"
echo "3) Generar archivo"
echo "4) salir"
echo "Ingresa tu opcion: "

read opc
case $opc in
	1)
    	echo "ver directorio del Usuario"
		cd /home/$NOM
		ls -l;;
 	2)
		echo "Generar carpeta"
		cd /home/$NOM
		mkdir carpeta.$NOM
		ls -l;;
	3)
		echo "Generar archivo"
		cd /home/$NOM
		cat > archivo-$NOM.txt
		ls -l;;
	4)
		echo "Vamonos"
		exit;;
  	*)
    	echo "Opcion erronea, vamos a salir del script"
		exit;;
esac 


