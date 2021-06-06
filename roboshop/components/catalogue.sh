#!/bin/bash

source components/common.sh
rm -f /tmp/roboshop.log

HEAD "Install NodeJS\t\t\t"
yum install nodejs make gcc-c++ -y &>>/tmp/roboshop.log
STAT $?

HEAD "Add Roboshop App User\t\t"
adduser roboshop &>>/tmp/roboshop.log
STAT $?

HEAD "Download app from Github\t"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>/tmp/roboshop.log
STAT $?

HEAD "Extract the downloaded Archive "
cd /home/roboshop && unzip /tmp/catalogue.zip &>>/tmp/roboshop.log && mv catalogue-main catalogue
STAT $?

HEAD "Install NodeJS Dependencies\t"
cd /home/roboshop/catalogue && npm install --unsafe-perm &>>/tmp/roboshop.log
STAT $?

