#!/bin/bash

# Build
sudo pip install -r requirements.txt

# Code Analysis


# Test with Code Coverage
nose2 --junit-xml --with-coverage --coverage-report xml

# Publish
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace publish [Tests]nose2.xml coverage.xml  master.c9
