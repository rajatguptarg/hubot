#!/bin/bash

set -e

sudo su
cd /bial

echo 'Tighten your seat belts. I am configuring your AWS Infra. :blush: '

ansible-playbook setup-mongodb-aws.yml > '/var/log/log.txt' && echo 'Dude.!! Your AWS Infra is configured.' && exit 0;
