#!/bin/bash

# Build
sudo pip install -r requirements.txt
sudo apt-get install pylint

# Code Analysis
pylint stock_alerter/ -f parseable > analysis.txt

# Test with Code Coverage
nose2 --junit-xml --with-coverage 

# Publish

## Requires TESTSPACE_TOKEN = $ACCESS_TOKEN:@samples.testspace.com. 

BRANCH_NAME=`git symbolic-ref --short HEAD`
GIT_URL=`git remote show origin -n | grep Fetch\ URL: | sed 's/.*URL: //'`
REPO_SLUG=`echo ${GIT_URL#*github.com?} | sed 's/.git//'`

curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace @.testspace.txt $TESTSPACE_TOKEN/${REPO_SLUG/\//:}/${BRANCH_NAME}#c9.Build