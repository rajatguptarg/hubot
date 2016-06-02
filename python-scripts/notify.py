#!/bin/usr/env python
import os
import requests as r
import json

services = list()

services.append(os.environ.get('CS_URL'))
services.append(os.environ.get('CMS_URL'))
services.append(os.environ.get('CTX_URL'))
services.append(os.environ.get('FIS_URL'))
services.append(os.environ.get('FS_URL'))
services.append(os.environ.get('LS_URL'))
services.append(os.environ.get('NS_URL'))
services.append(os.environ.get('US_URL'))
services.append(os.environ.get('WS_URL'))


service_name = {
    os.environ.get('CS_URL'): "Commercial Service",
    os.environ.get('CMS_URL'): "Content Management Service",
    os.environ.get('CTX_URL'): "Contextual Service",
    os.environ.get('FIS_URL'): "Flight Info Service",
    os.environ.get('FS_URL'): "Feedback Service",
    os.environ.get('LS_URL'): "Location Service",
    os.environ.get('NS_URL'): "Notification Service",
    os.environ.get('US_URL'): "User Service",
    os.environ.get('WS_URL'): "Weather Service",
}

message = "I am not able to access the following services: "
msg_len = len(message)


for service in services:
    try:
        if r.get(service).status_code != 200:
            message += "\n - " + service_name.get(service)
    except:
        message += "\n - " + service_name.get(service)



payload = {
    "attachments": [
        {
            "fallback": "Following service(s) are not accessible.",
            "color": "danger",
            "title": "Service Downtime",
            "text": message,
            "fields": [
                {
                    "title": "Priority",
                    "value": "High",
                    "short": "true"
                },
                {
                    "title": "Environment",
                    "value": "UAT",
                    "short": "true"
                }
            ],
            "thumb_url": "http://www.professionalresumewriters.net/wp-content/uploads/2014/07/Danger.png"
        }
    ]
}

if len(message) > msg_len:
    r.post(
        os.environ.get('WEBHOOK_URL'),
        data=json.dumps(payload),
        headers={'Content-Type': 'application/json'}
    )
