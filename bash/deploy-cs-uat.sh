#!/bin/bash

set -e

sudo su
cd /bial

echo 'Hey Dude.!! Going to deploy Commercial Service on UAT. :blush: '

ansible-playbook -i inventory/ec2.py --vault-password-file=/etc/ansible/.vault_password.txt -e "env=UAT" service-commercial-aws.yml > '/var/log/log.txt' && echo 'Dude.!! Commercial Service is Deployed. :blush:' &&exit 0;
