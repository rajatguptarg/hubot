#!/bin/sh
# This is machine specific configurations

set -e

SCRIPT_PATH=bash

cd python-scripts


while true
do
    python notify.py
	sleep 900s;
done
