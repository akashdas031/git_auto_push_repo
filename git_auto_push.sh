#!/bin/bash


##################################################################
#
#   Shell script to check whether git is initialize inside a directory or not and push code automatically using cron jobs....
#
#   ##############################################################

   git status

   if [ $? == '0' ]; then 
	   echo "git is initialized and perform auto push operation..."
   else
	   echo "git is not initialized...do you want to initialize to perform operation???  "
   fi

