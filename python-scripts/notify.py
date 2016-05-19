payload = {
    "attachments": [
        {
            "fallback": "Required plain-text summary of the attachment.",
            "color": "#36a64f",
            "pretext": "Optional text that appears above the attachment block",
            "author_name": "Bobby Tables",
            "author_link": "http://flickr.com/bobby/",
            "author_icon": "http://flickr.com/icons/bobby.jpg",
            "title": "Slack API Documentation",
            "title_link": "https://api.slack.com/",
            "text": "Optional text that appears within the attachment",
            "fields": [
                {
                    "title": "Priority",
                    "value": "High"
                }
            ],
            "image_url": "http://tinyurl.com/zr736wx",
            "thumb_url": "http://tinyurl.com/zr736wx"
        }
    ]
}

# rq.post(url, data=json.dumps(x), headers={'Content-Type': 'application/json'})
print payload
