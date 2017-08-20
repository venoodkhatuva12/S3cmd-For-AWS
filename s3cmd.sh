#!/bin/bash
#Script made for S3CMD Installtion for S3 Backup...
#Author: Vinod.N K
#Usage: bash, Shell 
#Distro : Linux -Centos, Rhel, and any fedora
#Check whether root user is running the script

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo " Starting installation of S3cmd from source."
cd /
sudo wget http://ufpr.dl.sourceforge.net/project/s3tools/s3cmd/1.6.1/s3cmd-1.6.1.tar.gz
sudo tar -zxvf s3cmd-1.6.1.tar.gz
mv s3cmd-1.6.1 s3cmd
cd s3cmd
sudo python setup.py install
ln -s /s3cmd/s3cmd /usr/bin/s3cmd

echo " Please Configure the s3cmd with AWS Credential.."
s3cmd --configure

