#!/bin/bash

set -e

sudo su
cd /bial
echo 'Tighten your seat belts. I am configuring the AWS Infrastructure..!! :upside_down_face:'

ansible-playbook -i inventory/ec2.py --vault-password-file=/etc/ansible/.vault_password.txt -e "env=UAT" setup-aws-uat.yml > '/var/log/log.txt' && echo 'Hey dude.!! I configured the AWS Infrastructure. :blush:' && exit 0;
