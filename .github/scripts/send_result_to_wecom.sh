#!/bin/sh

curl "https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=$WECOM_CI_ROBOT_KEY" \
   -H 'Content-Type: application/json' \
   -d '
   {
        "msgtype": "text",
        "text": {
            "content": "hello world",
            "mentioned_list":["谭宇超"]  
        }
   }'
