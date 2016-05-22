#!/bin/bash

set -e

sudo su
cd /bial
echo 'Hey Dude.!! Go for Juice. I am setting up the AWS Infrastructure..!! :upside_down_face:'

ansible-playbook setup-aws-uat.yml > '/var/log/log.txt' && echo 'Your AWS Infra is ready. :blush:' && exit 0;
