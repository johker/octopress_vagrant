#!/bin/bash

sudo apt-get -y update

sudo apt-get -y install curl

sudo apt-get -y install gnupg2

gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

\curl -L https://get.rvm.io | bash -s stable

source /etc/profile.d/rvm.sh

rvm requirements

rvm install ruby

rvm use ruby --default

sudo chown -R vagrant /opt

cd /opt 

# To avoid Javascript runtime error
sudo apt-get -y install nodejs

sudo apt-get -y install -y git-core

# git clone git://github.com/imathis/octopress.git octopress

# Clone in non-empty folder 

git clone git://github.com/imathis/octopress.git temp
mv temp/.git octopress/.git
rm -rf temp
cd /opt/octopress 
git fetch --all
git reset --hard origin/master


cd /opt/octopress 

gem install bundler

# sudo apt-get bundler install

bundle install

rake install

sudo chown -R vagrant /opt/octopress
