#!/bin/bash

file='linux_commands1.txt'
while read line; do
echo $line
done < $file
