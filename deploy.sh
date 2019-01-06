#!/bin/bash
#copy repo with application
git clone -b monolith https://github.com/express42/reddit.git
#move to specyfic folder and install dependencies
cd redit && bundle install
#start server and checking port
puma -d
ps aux | grep puma
