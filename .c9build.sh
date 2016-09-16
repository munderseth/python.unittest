#!/bin/bash

# Build
sudo pip install -r requirements.txt
sudo apt-get install pylint

# Code Analysis
pylint stock_alerter/ -f parseable > analysis.txt

# Test with Code Coverage
nose2 --junit-xml --with-coverage 

# Publish
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace analysis.txt{issues} nose2.xml{stock_alerter} coverage.xml  master.c9
