#!/usr/bin/env bash

USER_ID=$(id -u)
if [ "${USER_ID}" -ne 0 ] ; then
  echo -e "\e[1;31m""you should be a root user to perform this command\e[0m"
  exit
 fi

yum install nginx -y

# systemctl enable nginx
# systemctl start nginx