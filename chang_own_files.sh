#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Change owner of file in /home/$USERNAME that not belog to $USERNAME 
#        the script will scan the files and change files that own is not $USERNAME 
#        by command "chown $USERNAME file"
#Version 1.0
#Date : 30/11/2017


home_user="/home/$USERNAME/"

 # fetch only files  with own file - print $3 and name file - $9 
for line in $(ls -lp /home/$USERNAME |grep -v / |grep -v "total"|awk '{print $3 ":" $9}');
do
  own_file=$(echo $line |cut -d":" -f1)
  name_file=$(echo $line |cut -d":" -f2)
  
  # if own file diffrent from $USERNAME chane owner to $USERNAME
  if [ $own_file != $USERNAME ];then
    name_file="chown $USERNAME $home_user$name_file"
    $name_file 
  fi
done
