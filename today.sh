#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Print what day of week is today with some cheer 
#        for example Monday will print "Monday i dont like Monday" 
#Version 1.0
#Date : 30/11/2017


today=$(date +%A)

case $today in
  "Sunday") printf "$today time to start the week!\n";;
  "Monday") printf "$today i dont like $today\n";;
  "Tuesday") printf "$today is twice as good\n";;
  "Wednesday") printf "$today going to homsplace ...\n";;    
  "Thrusday") ptintf "$today going home to weekend\n";;
  "Friday") printf "$today preparing for saturday\n";;
  "Saturday") printf "$today the bed is calling me\n";;
esac

