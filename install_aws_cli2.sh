#!/bin/bash

#-----------------------------------------------------------

#Author: Tarun Malempati
#Topic: Installing AWS CLI
#Date: 28th March 2024

#------------------------------------------------------------

#update all the packages
sudo apt-get update -y

#download the installation file using curl
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

#install unzip
sudo apt-get install unzip

#unzip the file
unzip awscliv2.zip

#run the install program
sudo ./aws/install

#check the version
echo "AWS version installed: $aws --version"
echo "AWS installed successfully"
