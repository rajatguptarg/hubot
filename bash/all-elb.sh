#!/bin/sh
# This is machine specific configurations

set -e

# workon offers
# { echo "\`\`\`"; aws elb describe-instance-health --load-balancer-name ELB-flightInfoService; echo "\`\`\`";} | sed -e 'N;s/\n/ /'


echo "\`Status for FlightInfo Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name UAT-ELB-flightInfoService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;


echo "\`Status for User Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name UAT-ELB-userService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Commercial Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name UAT-ELB-commercialService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Notification Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name UAT-ELB-notificationService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Location Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name UAT-ELB-locationService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Contextual Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name UAT-ELB-contextualService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Content Management Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name UAT-ELB-contentManagementService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Weather Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name UAT-ELB-weatherService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

echo "\`Status for Feedback Service\`\n"
echo "\`\`\`" | (aws elb describe-instance-health --load-balancer-name UAT-ELB-feedbackService --output table| (echo "\`\`\`" && cat) && cat) > elb_log.txt
cat elb_log.txt
sleep 1s;

# deactivate
