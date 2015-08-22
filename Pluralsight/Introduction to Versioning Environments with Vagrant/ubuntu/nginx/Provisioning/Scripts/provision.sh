apt-get -y update

apt-get -y install nginx

sudo rm -rf /etc/nginx/sites-enabled
sudo cp -r /vagrant/Projects/nginx/sites-enabled /etc/nginx

# wget -qO- localhost
# ls /etc/nginx/sites-enabled/
# head -30 /etc/nginx/sites-enabled/default
# ls /usr/share/nginx/www
# cat /usr/share/nginx/www/index.html
# ls /vagrant
# cp -r /usr/share/nginx/www /vagrant/www

# sudo rm -rf /usr/share/nginx/www
# sudo ln -s /vagrant/Projects/nginx/www /usr/share/nginx/www

service nginx start
