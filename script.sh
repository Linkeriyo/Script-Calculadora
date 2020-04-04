#!/bin/bash
clear
echo "¿que quieres hacer?"
echo "S. sumar"
echo "R. restar"
echo "M. multiplicar"
echo "D. dividir"
echo "C. cuenta hasta un numero"
echo "N. indica si un numero es negativo"
read -p "introduce una letra: " letra

case "$letra" in 
    [Ss])
        read -p "primer numero: " primer
        read -p "segundo numero: " segundo
        echo $((primer + segundo))
        ;;
    [Rr])
        read -p "primer numero: " primer
        read -p "segundo numero: " segundo
        echo $((primer - segundo))
        ;;
    [Mm])
        read -p "primer numero: " primer
        read -p "segundo numero: " segundo
        resultado=0
        i=0
        while [[ $i -lt $segundo ]];
        do
            resultado=$((resultado + primer))
            i=$((i + 1))
        done
        echo $resultado
        ;;
    [Dd])
        read -p "primer numero: " primer
        read -p "segundo numero: " segundo
        echo $((primer / segundo))
        ;;
    [Cc])
        read -p "hasta donde quieres contar?: " numero
        for i in `seq 1 $numero`;
        do
        echo "$i"
        done
        ;;
    [Nn])
        read -p "introduce un numero: " numero
        if [[ numero -lt 0 ]];
        then
            echo "el número es negativo"
        elif [[ numero -eq 0 ]];
        then
            echo "el número no es positivo ni negativo"
        else
            echo "el número es positivo"
        fi
esac
