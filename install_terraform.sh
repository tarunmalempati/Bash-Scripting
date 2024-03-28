#!/bin/bash

#-----------------------------------------------------

#Author: Tarun Malempati
#Topic: Installation of Terraform in an Ubuntu Machine
#Date: 28th March 2024

#-----------------------------------------------------

#update all the packages 

sudo apt-get update -y

#add the gpg key
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

#install terraform 
sudo apt-get update -y
sudo apt-get install terraform -y

#check the version
echo "Terraform version: $terraform version"

echo "Terraform installed successfully"
