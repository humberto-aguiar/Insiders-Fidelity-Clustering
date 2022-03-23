#!usr/bin/bash

# specifying date
dt=$(date '+%Y-%m-%d--%H:%M:%S')

# paths
#which papermill to use (venv)
path_papermill="/home/ubuntu/.pyenv/versions/3.8.0/envs/insiders_deploy/bin/papermill"

# lastest file to run
file_to_execute="c17-deploy-v1.ipynb"

# paths
path_file="/home/ubuntu/project/Insiders-Loyalty-Program/src/notebooks/$file_to_execute"
path_log="/home/ubuntu/project/Insiders-Loyalty-Program/src/logs/$file_to_execute-date:$dt.ipynb"

# runing papermill deploy file on log path
$path_papermill $path_file $path_log

# push to github
git add .

msg="add aws log from date: $dt"

git commit -m "$msg"

HOME=/home/ubuntu/ git push origin main
