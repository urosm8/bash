#!/bin/bash

echo "Prva skripta!"

#komentar

tmp=1
if [ $tmp -eq 1 ]; then
	echo Tmp je 1!
else
	echo Tmp nije 1!
fi

if [ -e pos1.sh -a -w pos1.sh -a -x pos1.sh ]; then
	echo Skripta postoji i moze se koristiti!
else
	echo Skripta se ne moze koristiti!
fi

tmp2=2
if [ $tmp2 -eq 1 ]; then
	echo temp2 je 1!
elif [ $tmp2 -eq 2 ]; then
	echo temp2 je 2!
fi

i=0
while [ $i -lt 8 ]; do
	echo $i.
	let i++
done

for j in 8. 9. 10.; do
	echo $j
done

for j in $(ls); do
	echo $j"MU"
done

i=1
for j in $(find . -maxdepth 1 -name "f\d*.txt"); do
	echo $i. file = $j"REMOVED"
	rm $j
	let i++
done

for j in $(cat ff.txt); do
	echo $j
done

old_IFS=$IFS
IFS=$'\n'
for j in $(cat ff.txt); do
	echo $j
done
IFS=$old_IFS

for j in $(cat ff.txt); do
	echo $j
done
