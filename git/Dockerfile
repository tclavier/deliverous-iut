from deliverous/wheezy
run apt-get update && apt-get install -y apache2 git && apt-get clean

add default.vhost /etc/apache2/sites-available/default
run a2enmod dav dav_fs

add start /start
run chmod +x /start
cmd /start
volume ["/repositories"]
expose 80

add post-receive /root/post-receive
