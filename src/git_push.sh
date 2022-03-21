#!/usr/bin/bash

# executing aws file:
run_script_path="/home/ubuntu/project/Insiders-Loyalty-Program/src/run_deploy_aws.sh"

$run_script_path

# date
dt=$(date '+%Y-%m-%d--%H:%M:%S')

#path_papermill="/home/ubuntu/.pyenv/versions/3.8.0/envs/insiders_deploy/bin/papermill"
#path_file="/home/ubuntu/project/Insiders-Loyalty-Program/src/notebooks/c15-deploy-4.ipynb"
#path_log="/home/ubuntu/project/Insiders-Loyalty-Program/src/logs/c15-deploy-3-date:$dt.ipynb"

# runing papermill deploy file on log path
#$path_papermill $path_file $path_log

# git push
git add .

msg="add aws log from date: $dt"

git commit -m "$msg"

HOME=/home/ubuntu/ git push origin main
