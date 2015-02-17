#!/bin/bash
#
#   Author: Rohith (gambol99@gmail.com)
#   Date: 2015-02-17 17:06:10 +0000 (Tue, 17 Feb 2015)
#
#  vim:ts=2:sw=2:et
#

go get
go build
sudo apt-get install -y ruby-bundler
export PATH=$PATH:/home/ubuntu/.rbenv/versions/1.9.3-p448/bin
(cd tests/rest-api && bundle install)
make start-restapi
make api
