#!/bin/bash

set -e

sudo su
cd /bial

echo 'Hey Dude.!! Go for Juice. I am setting up your AWS Infra. :blush: '

ansible-playbook -i inventory/ec2.py --vault-password-file=/etc/ansible/.vault_password.txt -e "env=UAT" setup-aws-uat.yml > '/var/log/log.txt';

echo 'Dude.!! Your AWS Infra is ready. :blush:'

exit 0;
