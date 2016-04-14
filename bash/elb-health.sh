#!/bin/sh
# This is machine specific configurations

set -e

/bin/zsh << 'EOF'

# workon offers
# { echo "\`\`\`"; aws elb describe-instance-health --load-balancer-name ELB-flightInfoService; echo "\`\`\`";} | sed -e 'N;s/\n/ /'


cd ~/Projects/hubot/logs

echo "\`Status for FlightInfo Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-flightInfoService | (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;


echo "\`Status for User Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-userService | (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Commercial Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-commercialService | (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Notification Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-notificationService | (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Location Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-locationService | (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Contextual Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-contextualService | (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Content Management Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-contentManagementService | (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Weather Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-weatherService | (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Feedback Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-feedbackService | (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

# deactivate

EOF
