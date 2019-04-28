#!/bin/sh
echo "Practica NMAP"
#MAPEO DEL SSH
nmap -p 22 10.0.2.15/24 > log.ssh
#MAPEO DEL PUERTO 80
nmap -p 80 10.0.2.15/24 > log.apt
