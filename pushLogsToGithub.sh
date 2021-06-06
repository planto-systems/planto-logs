#/bin/sh
cd /home/pi/githubRepos/planto-logs
/usr/bin/git add *
commit_message=$(date)
echo "$commit_message"
/usr/bin/git commit -m "${commit_message}" -a
/usr/bin/git push
rsync -a /home/pi/githubRepos/planto-logs/*.log /mnt/planto/logs/
