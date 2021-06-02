#/bin/sh
logpath=/home/pi/githubRepos/planto-logs/
logarchivepath=${logpath}archive/
yesterday=$(date -d "1 day ago" '+%Y-%m-%d')
mv ${logpath}sg1.log $logarchivepath${yesterday}_sg1.log
touch {logpath}sg1.log