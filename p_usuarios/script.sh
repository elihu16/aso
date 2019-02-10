#!/bin/sh
NOM=$1

#cat /etc/passwd | grep $NOM

existe=$(grep -c '^$NOM:' /etc/passwd)

if [ $existe -eq 0 ]; then
    echo "The user $NOM exists"
    echo ""
cat /etc/passwd | grep $NOM
else
    echo "The user $NOM does not exist"
    echo ""
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
    		echo "ver directorio del Usuario" ;
		cd /home/$NOM
		ls -l;;
 	2)
		echo "Generar carpeta" ;
		cd /home/$NOM
		mkdir carpeta.$NOM;
		ls -l;;
	3)
		echo "Generar archivo";
		cd /home/$NOM;
		cat > archivo-elihu.txt
		ls -l;;
	4)
		exit;;
  	*)
    		echo "Opcion erronea";;
esac 


