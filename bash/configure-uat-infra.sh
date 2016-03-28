#!/bin/bash

set -e

sudo su
cd /bial

echo 'Hey Dude.!! Go for Juice. I am setting up your AWS Infra. :blush: '

ansible-playbook setup-mongodb.yml > '/var/log/log.txt' && echo 'Dude.!! Your AWS Infra is ready.' && exit 0;
