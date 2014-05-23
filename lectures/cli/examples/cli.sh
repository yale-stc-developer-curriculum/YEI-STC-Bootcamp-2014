#!/bin/bash

# some example commands to show students at the beginning of Week 1 Day 1 
# on CLI to motivate the lecture

# do not try to run this script -- lol!!

# start in examples folder


#change directories; list files / directories there
cd red
ls

cd yellow
ls

cd green
ls

# reads file.txt
cat file.txt

cd ..    #go up
ls

#but wait!!!! there's more
#show hidden files
ls -a 

cat .ready   #reads .ready

cd ..

ls -a

open .cats.jpg       # will only work on macs --> opens hidden picture


# move .cats.jpg   (so now it's not hidden anymore)
mv .cats.jpg cats.jpg

ls -a

cd ..

ls -a

#there's a hidden directory too!
cd .yellow_brick_road

#where am i?
pwd

ls -a

#show the pic
open pic.jpg

rm pic.jpg  #delete it!!!!

cd ..

# no more yellow brick road... lol!
rmdir .yellow_brick_road

ls -a

#copy our file to the front
cp red/yellow/green/file.txt file.txt

#jk...let's delete it
rm file.txt

#let's exit the terminal
exit
