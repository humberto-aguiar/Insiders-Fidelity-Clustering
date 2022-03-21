#!/usr/bin/bash

# executing aws file:
run_script_path="/home/ubuntu/project/Insiders-Loyalty-Program/src/run_deploy_aws.sh"

$run_script_path

# date
dt=$(date '+%Y-%m-%d--%H:%M:%S')

#$path_papermill $path_file $path_log

# git push
git add .

msg="add aws log from date: $dt"

git commit -m "$msg"

HOME=/home/ubuntu/ git push origin main
