#!/usr/bin/bash

# date
dt=$(date '+%Y-%m-%d--%H:%M:%S')

#path_papermill="/home/ubuntu/.pyenv/versions/3.8.0/envs/insiders_deploy/bin/papermill"
#path_file="/home/ubuntu/project/Insiders-Loyalty-Program/src/notebooks/c15-deploy-4.ipynb"
#path_log="/home/ubuntu/project/Insiders-Loyalty-Program/src/logs/c15-deploy-3-date:$dt.ipynb"

# runing papermill deploy file on log path
#$path_papermill $path_file $path_log

# git push
git add .

git commit -m 'update log from aws on date: $date'

HOME=/home/ubuntu/ git push origin main


# testing if this will work
