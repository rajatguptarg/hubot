#!/bin/sh

set -e

while true
do
    bin/hubot -a slack -n samantha >> hubot.log
done
