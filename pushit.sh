#!/bin/bash

pkill -x ssh-agent 
sleep 1
echo "ssh-agents killed"
eval $(ssh-agent)
sleep 1 
echo "ssh-agent inicialized"
ssh-add ~/.ssh/github
sleep 1
echo "ssh-key-id added"
git add . 
read -p "Add Commit Message: " message 
git commit -m " $message "  
git push git@github.com:DaoExpression/repos-and-links
echo "Repositório Actualizado"
sleep 3
