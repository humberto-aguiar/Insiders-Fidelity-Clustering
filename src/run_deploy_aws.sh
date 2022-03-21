#!usr/bin/bash

# specifying date
dt=$(date '+%Y-%m-%d--%H:%M:%S')

# paths
path_papermill="/home/ubuntu/.pyenv/versions/3.8.0/envs/insiders_deploy/bin/papermill"
path_file="/home/ubuntu/project/Insiders-Loyalty-Program/src/notebooks/c16-deploy-5.ipynb"
path_log="/home/ubuntu/project/Insiders-Loyalty-Program/src/logs/c16-deploy-5-date:$dt.ipynb"

# runing papermill deploy file on log path
#$path_papermill $path_file $path_log

# date
dt=$(date '+%Y-%m-%d--%H:%M:%S')

#$path_papermill $path_file $path_log

# git push
git add .

msg="add aws log from date: $dt"

git commit -m "$msg"

HOME=/home/ubuntu/ git push origin main
