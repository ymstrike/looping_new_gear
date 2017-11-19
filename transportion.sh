#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Print Details about transprtion that givven by the user as a parameter 
#        for example car will print "car cost 120,000 nis can use at least 10 years" 
#Version 1.0
#Date : 30/11/2017


read -p "Enter name of transportion like car bus etc : " car

case $car in
  "car") printf "$car 120,000 nis can use at least 10 years\n";;
  "bike") printf "$car cost 35,000 nis can use at least 15 years\n";;
  "bicycle") printf "$car cost 5,000 nis can use at least 8 years\n";;
  "bus") printf "$car cost 500,000 nis can use at least 15 yearsday \n";;    
  "track") ptintf "$car cost 750,000 nis can use at least 20 years\n";;
esac

