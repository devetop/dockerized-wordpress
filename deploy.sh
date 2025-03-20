#!/bin/sh
cd /home/tonjoo/repo/wordpress.git
git fetch origin master:master
git --work-tree=/home/tonjoo/dockerized-wordpress --git-dir=/home/tonjoo/repo/wordpress.git checkout master -f
chmod +x /home/tonjoo/dockerized-wordpress/wrapper.sh
bash /home/tonjoo/dockerized-wordpress/wrapper.sh dev-local dev-tongkolspace dev-proxy down
bash /home/tonjoo/dockerized-wordpress/wrapper.sh dev-local dev-tongkolspace dev-proxy up -d 
