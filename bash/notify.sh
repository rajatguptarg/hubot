#!/bin/sh
# This is machine specific configurations

set -e

SCRIPT_PATH=/Users/rajatg/Projects/hubot/bash

cd python-scripts


while true
do
    python notify.py
	sleep 10s;
done
