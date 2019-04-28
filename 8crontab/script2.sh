#!/bin/sh
var1=$(cat /etc/passwd | grep alf)
echo $var1

if [ $var1 ];
then
echo 'El usuario si existe'
#/usr/sbin/service/ssh stop
service ssh stop

else
echo 'El usuario no existe'
apt update > log.update
fi
