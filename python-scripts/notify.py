#!/bin/python
import requests

failed_services = list()

try:
    cs_code = requests.get('http://cs.uat.obhiyo.com/cs/mappings').status_code
except:
    cs_code = 500

try:
    cms_code = requests.get('http://cms.uat.obhiyo.com/cms/mappings').status_code
except:
    cms_code = 500

try:
    ctx_code = requests.get('http://ctx.uat.obhiyo.com/ctx/mappings').status_code
except:
    ctx_code = 500

try:
    fis_code = requests.get('http://fis.uat.obhiyo.com/fis/mappings').status_code
except:
    fis_code = 500

try:
    fs_code = requests.get('http://fs.uat.obhiyo.com/fs/mappings').status_code
except:
    fs_code = 500

try:
    ls_code = requests.get('http://ls.uat.obhiyo.com/ls/mappings').status_code
except:
    ls_code = 500

try:
    ns_code = requests.get('http://ns.uat.obhiyo.com/ns/mappings').status_code
except:
    ns_code = 500

try:
    us_code = requests.get('http://us.uat.obhiyo.com/us/mappings').status_code
except:
    us_code = 500

try:
    ws_code = requests.get('http://ws.uat.obhiyo.com/ws/mappings').status_code
except:
    ws_code = 500


if cs_code != 200:
    failed_services.append('Commercial Service   `CODE: ' + str(cs_code) + '`')

if cms_code != 200:
    failed_services.append('Content Management Service   `CODE: ' + str(cms_code) + '`')

if ctx_code != 200:
    failed_services.append('Contextual Service   `CODE: ' + str(ctx_code) + '`')

if fis_code != 200:
    failed_services.append('FlightInfo Service   `CODE: ' + str(fis_code) + '`')

if ls_code != 200:
    failed_services.append('Location Service   `CODE: ' + str(ls_code) + '`')

if ns_code != 200:
    failed_services.append('Notification Service   `CODE: ' + str(ns_code) + '`')

if us_code != 200:
    failed_services.append('User Service   `CODE: ' + str(us_code) + '`')

if fs_code != 200:
    failed_services.append('Feedback Service   `CODE: ' + str(fs_code) + '`')

if ws_code != 200:
    failed_services.append('Weather Service   `CODE: ' + str(ws_code) + '`')

if len(failed_services) != 0:
    print "Hey I can't access these services:"
    print
    for service in failed_services:
        print "> ", service
    print "Can you check it once ?"
