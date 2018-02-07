#!/bin/bash

echo
echo "================================"
echo " Check if Ansible is installed"
echo "================================"
echo 
if command -v ansible >/dev/null 2>&1 ; then
  ansible_ver=$(ansible --version | awk 'NR==1{print $2}')
  echo "Ansible ${ansible_ver} is installed"
else
  echo "Ansible is not installed"
  exit 1
fi

if pip show boto >/dev/null 2>&1 ; then
  echo "Boto is installed"
else
  echo "Boto is not installed"
  exit 1
fi

# echo
# echo "================================"
# echo " Create ssh key"
# echo "================================"
# echo 
#ssh-keygen -t rsa -b 4096 -f tmp_rsa -N ""

echo
echo "================================"
echo " Run Ansible Playbook"
echo "================================"
echo
ansible-playbook create.yml --tags "create"
