#!/bin/bash

OPTIONS='f:d:p:v'

while getopts $OPTIONS opt
do
	case $opt in
	f) file=$OPTARG
	;;
	d) dir=$OPTARG
	;;
	p) pattern=$OPTARG
	;;
	v) v=-v
	;;
	*) echo Koriscenje skripte pos5.sh -f file -d dir -p pattern [-v]
	exit -1
	;;
	esac
done


if [ -z "$file" -o -z "$dir" -o -z "$pattern" ]
then
	echo Koriscenje skripte pos5.sh -f file -d dir -p pattern [-v]
        exit -1
fi


tar -xf $file

src_dir=$( echo $file | sed -En 's/.*\/([^\.]*).*/\1/p' )
echo $src_dir



if [ ! -d "$dir" ]; then
	mkdir $dir
fi

dir=$(realpath $dir)

pushd $src_dir

pwd


student="[a-z]{2}[0-9]{6}"

for i in $(find . -maxdepth 1 -name "*" | grep -E $student)
do
	name=$(echo $i | sed -E "s:.*($student).*:\1:" )
	echo $name
	file_name="$dir/$name.c"
	echo $file_name
	old_IFS=$IFS
	IFS=$'\n'
	for j  in $( find $i -iname "*.c" | grep -i $v $pattern )
	do
		cat $j >> $file_name
	done
	IFS=$old_IFS
done

echo USPEH!!!
