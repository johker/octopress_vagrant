#!/bin/bash

sudo apt-get -y update

sudo apt-get -y install curl

\curl -L https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install ruby

rvm use ruby --default

sudo chown -R vagrant /opt

cd /opt 

sudo apt-get install -y git-core

git clone git://github.com/imathis/octopress.git

cd /opt/octopress 

gem install bundler
# sudo apt-get bundler install

bundle install

rake install

sudo chown -R vagrant /opt/octopress
