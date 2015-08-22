apt-get -y update

apt-get -y install nginx

sudo rm -rf /etc/nginx/sites-enabled
sudo cp -r /vagrant/Projects/nginx/sites-enabled /etc/nginx

service nginx start
