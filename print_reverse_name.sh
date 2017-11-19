#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Print name taht enterd by the user in reverse order 
#        example if run "./print_reverse_name.sh yuval" then the script will print "lavuy"
#Version 1.0
#Date : 30/11/2017


func_reverse_name()
{
len=${#name}                  # get length of name insert
for ((i=$len;i>=0;i--))
do
  rev_name="$rev_name${name:$i:1}"     # build the reverse name from last char to begin char
done
printf "Original \"$name\" Is enterd !\n"
printf "Reverse Name Is \"$rev_name\"\n"
}

name=$1
func_reverse_name
