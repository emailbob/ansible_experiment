
# Ansible launch EC2 instance 
Experiment to have minimal requirements and to only use Ansible to create a VPC and bring up an instance in AWS.  I have never used the VPC module for Ansible so this gives me a reason to try it.  I'm also going to try to use pure Ansible and avoid using the shell or command modules

### Requirements
Ansible > 2.1
Boto

### Instructions
Run `create.sh` to create the instance and `cleanup.sh` to tear it down

### Details
This playbook should create a VPC and a public subnet and launch a CoreOS instance running Jenkins in a docker container. Jenkins data will persists on container restart. Ideally we would be accessing the web application over SSL and the instance will be in a private subnet in an autoscale group with an ELB in front of it but that is out of scope for this project