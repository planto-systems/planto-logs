#/bin/sh
logpath=/home/pi/githubRepos/planto-logs/
logarchivepath=$logpath archive
echo $logarchivepath
yesterday=$(date -d "1 day ago" '+%Y-%m-%d')
#mv ${logpath}sg1.log /home/pi/githubRepos/planto-logs/archive/${yesterday}_sg1.log
touch sg1.log