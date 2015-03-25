#! /bin/bash

rm -f funcNames.txt

for i in `find -name ./*.'[ch]'`
do
    grep '^[a-z A-Z 0-9 \t ]*([a-z A-Z 0-9 _ - .])' | awk '{print $2}' >> funcNames.txt
done

for i in `find -name ./*/*.'[ch]'`
do
    grep '^[a-z A-Z 0-9 \t ]*([a-z A-Z 0-9 _ - .])' | awk '{print $2}' >> funcNames.txt
done


for i in `find -name ./*/*/*.'[ch]'`
do
    grep '^[a-z A-Z 0-9 \t ]*([a-z A-Z 0-9 _ - .])' | awk '{print $2}' >> funcNames.txt
done
