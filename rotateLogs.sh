#/bin/sh
logpath=/home/pi/githubRepos/planto-logs/
logarchivepath=${logpath}archive/
sg1Log=sg1.log
sg2Log=sg2.log

yesterday=$(date -d "1 day ago" '+%Y-%m-%d')

mv ${logpath}sg1.log $logarchivepath${yesterday}_$sg1Log
touch {logpath}$sg1Log
mv ${logpath}$sg2Log $logarchivepath${yesterday}_$sg2Log
touch {logpath}$sg2Log
/home/pi/githubRepos/planto-logs
/home/pi/githubRepos/planto-logs/pushLogsToGithub.sh
rsync --remove-source-files -a /home/pi/githubRepos/planto-logs/archive/* /mnt/planto/logs/
rsync --remove-source-files -a /home/pi/githubRepos/planto-logs/cam/* /mnt/planto/cam/
