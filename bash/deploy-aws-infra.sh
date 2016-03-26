#!/bin/bash

sudo su
cd /bial
ansible-playbook -i inventory/ec2.py --vault-password-file=/etc/ansible/.vault_password.txt -e "env=UAT" setup-aws-uat.yml
