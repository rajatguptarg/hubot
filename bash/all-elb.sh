#!/bin/sh
# This is machine specific configurations

set -e

/bin/zsh << 'EOF'

# workon offers
# { echo "\`\`\`"; aws elb describe-instance-health --load-balancer-name ELB-flightInfoService; echo "\`\`\`";} | sed -e 'N;s/\n/ /'


cd ~/Projects/hubot/logs

echo "\`Status for FlightInfo Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-flightInfoService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;


echo "\`Status for User Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-userService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Commercial Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-commercialService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_logs.txt
sleep 1s;

echo "\`Status for Notification Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-notificationService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Location Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-locationService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Contextual Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-contextualService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Content Management Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-contentManagementService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Weather Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-weatherService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Feedback Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name ELB-feedbackService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

# deactivate

EOF
