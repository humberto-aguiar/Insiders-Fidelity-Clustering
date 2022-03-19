dt=$(date '+%Y-%m-%d--%H:%M:%S')

path_papermill="/home/humberto/.pyenv/versions/3.8.0/envs/insiders_deploy/bin/papermill"
path_file="/home/humberto/DS/insiders_clustering/src/notebooks/c14-deploy-3.ipynb"
path_log="/home/humberto/DS/insiders_clustering/src/logs/c14-deploy-3-date:$dt.ipynb"

$path_papermill $path_file $path_log