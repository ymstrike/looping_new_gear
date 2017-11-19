#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Execute command after x seconds 
#        input 2 parameters : time(in seconds) , command 
#        example if run with 10 "ls -la" then ls -la will exceute after 10 seconds
#Version 1.0
#Date : 30/11/2017


read -p "enter time in seconds : " time
read -p "enter command to be execute " command

flag_parm=0  #flag to check if parameter where insert

             # -z ==> no parameter where insert
if [ -z $time ];then
  printf "No parameter \"time\" where insert\n"
  flag_parm=1
fi
if [ -z $command ];then
  printf "No parameter \"command\" insert\n"
  flag_parm=1
fi
if [ $flag_parm -eq 0 ];then         #if the 2 parameters where insert
printf "$command will run in $time seconds ...\n"
sleep $time
#command=$(echo $command)
echo "$($command)"
fi
