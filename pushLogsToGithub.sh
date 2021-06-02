#/bin/sh
cd /home/pi/githubRepos/planto-logs
/usr/bin/git add *
commit_message=$(date)
echo "$commit_message">>/home/pi/log.txt
/usr/bin/git commit -m "${commit_message}" -a
/usr/bin/git push>>/home/pi/log.txt 2>&1