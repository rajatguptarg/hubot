#!/bin/sh


while true
do
    git pull --rebase origin master
    bin/hubot -a slack -n samantha >> hubot.log
    echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>SCRIPT RESTARTED<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" >> hubot.log
done
