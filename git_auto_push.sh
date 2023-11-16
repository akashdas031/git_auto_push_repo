#!/bin/bash


##################################################################
#
#   Shell script to check whether git is initialize inside a directory or not and push code automatically using cron jobs....
#
#   ##############################################################

  

   if [ -d .git ]; then 
	   if [ "git status --porcelain | wc -l " == '0']; then
		   echo "Everything in this directory is already commited to the local repo...you can go forward to perform the action..."
		   if [ "git remote | wc -l " == '0' ]; then
			   echo " No remote repository found....add remote repo to perform action.."
		   else
			   echo " action can be performed..."
			   git remote
		   fi
	   else
		   echo "all files in this repo is not commited to the local repository...commit all files and try again..."
	   fi
	  
   else
	   echo "git is not initialized...do you want to initialize to perform operation???  "
   fi

