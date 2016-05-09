#!/bin/sh


while true
do
    git pull --rebase origin master
    source ~/.bashrc && bin/hubot -a slack -n samantha >> hubot.log
    echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>SCRIPT RESTARTED<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" >> hubot.log
done
