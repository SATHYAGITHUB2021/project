#!/bin/bash

echo -e "\e[1;31m INSTALLING NGINX ...\e[0m"
yum install nginx -y &>>/tmp/roboshop.log
STAT="exit $?"
if [ "$STAT" -eq 0 ]; then
  echo -e "\e[1;32mDone\e[0m"
else
  echo -e "\e[1;31m Filed\e[0m"
  echo -e "\e[1;32m Check the log for more details...Log-file : /tmp/roboshop.log\e[0m"
  exit 1
fi
