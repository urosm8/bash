#!/bin/bash
for i in "$@"
do
index=$(echo $i | cut -f1 -d= )
val=$(echo $i | cut -f2 -d= )
case $index in
	X) x=$val ;;
	Y) y=$val ;;
	*);;
esac
done
((res=x+y))
echo "X+Y=$res"
