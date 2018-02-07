#!/bin/bash

echo
echo "================================"
echo " Clean up VPC and EC2 instance"
echo "================================"
echo
ansible-playbook cleanup.yml --tags "cleanup"
