#!/bin/bash

COMPONENT=$1
##-z validates the variable empty, true if it is empty.
if [ -z "${COMPONENT}" ]; then
  echo "Component is needed"
  exit 1
fi

LID=lt-0cc3db256386b7689
LVER=1

aws ec2 run-instances --launch-template LaunchTemplateId=${LID},Version=${LVER} --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}]"


