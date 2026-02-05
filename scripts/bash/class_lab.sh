#!/bin/bash

# 1 List process for a daemon
ps aux | grep sshd

# 2 Kill by name
pkill my_script.sh

# 3 Run in background survive logout
nohup ./backup.sh &

# 4 Get PID of sshd
pgrep sshd

# 5 Process tree
pstree

# 6 Open files by PID
lsof -p 1234

# 7 Check docker daemon
systemctl status docker

# 8 Lowest CPU priority
nice -n 19 ./heavy_calc.sh

# 9 Recursive copy
cp -r /var/www/html /backup/html

# 10 Preserve attributes
cp -p secret.key /tmp/

# 11 Sync newer only
rsync -u src/ dest/

# 12 Copy if newer
cp -u dir1/* dir2/

# 13 Remote copy
scp app.conf user@192.168.1.50:/etc/

# 14 Archive logs
tar -czf logs.tar.gz /var/log

# 15 Files larger than 500MB
find /home -size +500M

# 16 Modified last 7 days
find /var/log -mtime -7

# 17 Owned by jenkins
find /tmp -user jenkins

# 18 Delete empty dirs
find /data -type d -empty -delete

# 19 Permission 777
find . -perm 777

# 20 Copy jpg files
find . -name "*.jpg" -exec cp {} images/ \;

# 21 Extract emails
grep -E -o "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" contacts.txt

# 22 Case insensitive error search
grep -i error syslog

# 23 Lines starting with root
grep "^root" config.ini

# 24 Lines not containing IP
grep -v 192.168.1.1 access.log

# 25 Recursive TODO search
grep -R TODO .

# 26 Replace localhost
sed -i 's/localhost/127.0.0.1/g' hosts.txt

# 27 Remove commented lines
grep -v "^#" config.txt

# 28 IPv4 regex
grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}' file.txt

# 29 Processes as root filtered
ps aux | grep root

     # 30 Find logs with Critical
grep -l Critical *.log
