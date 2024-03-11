#!/bin/bash

while getopts a:b opt
do
	case $opt in
		a) echo Opcija a
		   echo Parametar opcije a je: $OPTARG
		;;
		b) echo Opciija b
		;;
		*) echo Nije podrzana opcija!
		;;
	esac
done

echo Ostali parametri:
shift $[ $OPTIND - 1]
for j in "$@"; do
	echo $j
done
