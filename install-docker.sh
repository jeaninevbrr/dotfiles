sudo apt-get install docker.io
sudo adduser `whoami` docker

sudo groupadd docker
sudo gpasswd -a $USER docker
