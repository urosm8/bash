#!/bin/bash

if [ -n "$1" -a -n "$2" ]; then
	echo Program: `basename $0`
	echo Ime i prezime: $1
	echo Broj indeksa: $2
else
	echo Nisu svi parametri uneti!
fi


if [ $# -eq 2 ]; then
	echo Dovoljan broj parametara!
else
	echo Nedovoljan broj parametara!
fi

echo Testiranje \$*
for i in "$*"; do
	echo $i
done
echo Testiranje \$@
for i in "$@"; do
	echo $i
done

echo Testiranje shift komande

while [ $# -gt 0 ]
do
	echo $1
	shift
done

