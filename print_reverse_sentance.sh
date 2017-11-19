#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Print long sentace taht enterd by the user in reverse order 
#        run the script : ./print_reverse_sentance "my name is yuval ..."
#        example if enterd ./print_reverse_sentance "Hello world  my name is yuval and i very happy"
#                then the script will print "yppah yrev i dna lavuv si eman ym dlrow olleH"
#Version 1.0
#Date : 30/11/2017

func_reverse_name()
{

len=${#sentance}                  # get length of name insert
for ((i=$len;i>=0;i--))
do
  rev_name="$rev_name${sentance:$i:1}"     # build the reverse name from last char to begin char
done
printf "Original \"$sentance\" Is enterd !\n"
printf "Reverse sentance Is \"$rev_name\"\n"
}

sentance=$1
func_reverse_name
