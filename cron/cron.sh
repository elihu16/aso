#!/bin/sh
$usr= "carapapa"
v1=$(cat /etc/passwd | grep $usr)
echo $v1
if[$v1];
    then
    echo 'El usuario si existe'
    else
    echo 'El usuario no existe'
    apt update > log.update
fi