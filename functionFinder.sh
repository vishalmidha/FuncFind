#! /bin/bash

#script made for ubuntu (bash 4.3.11)
#place the file in src folder and simply run the script

#remove file from prev results if any
rm -f funcNames.txt

#find all .c and .h files in directory and subdirectories
for i in `find . -name '*.[ch]'`
do
    (grep '^[a-zA-Z0-9\t_][a-z A-Z 0-9 \t_ *]*([a-z A-Z 0-9 \t_ ,*]*)' $i) | awk -F '(' '{print $1}' | awk '{print $2}' | sed 's/^[* ]*//' >> funcNames.txt
done

#cat funcNames.txt | sort | uniq > funcNames.txt
sort funcNames.txt > temp.txt
uniq temp.txt > funcNames.txt
rm temp.txt
