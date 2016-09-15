[![Testspace](http://www.testspace.com/public/img/testspace_logo.png)](http://www.testspace.com)
***

## Python/Unittest sample for demonstrating Testspace based on the [test_driven_python repo](https://github.com/siddhi/test_driven_python)

Sample demonstrates techniques for using Testspace with Python code and the [`unittest` test framework](https://docs.python.org/2/library/unittest.html) together with [`cov-core` code coverage tool](https://pypi.python.org/pypi/cov-core) and [`nose2` runner](https://github.com/nose-devs/nose2).

***
Using Multiple Online CI Services:

[![Build Status](https://travis-ci.org/testspace-samples/php.phpunit.svg?branch=master)](https://travis-ci.org/testspace-samples/php.phpunit)
[![CircleCI](https://circleci.com/gh/testspace-samples/python.unittest.svg?style=svg)](https://circleci.com/gh/testspace-samples/python.unittest)
[![Run Status](https://api.shippable.com/projects/5710a3e02a8192902e1c1f8d/badge?branch=master)](https://app.shippable.com/projects/5710a3e02a8192902e1c1f8d)


***
Publishing **Test Content** using www.testspace.com.

[![Space Health](https://samples.testspace.com/projects/120/spaces/444/badge)](https://samples.testspace.com/projects/120/spaces/444 "Test Cases")
[![Space Metric](https://samples.testspace.com/projects/120/spaces/444/metrics/272/badge)](https://samples.testspace.com/spaces/444/schema/Code%20Coverage "Code Coverage (lines)")
[![Space Metric](https://samples.testspace.com/projects/120/spaces/444/metrics/274/badge)](https://samples.testspace.com/spaces/444/schema/Static%20Analysis "Static Analysis (issues)")


*** 

In order to run this sample you will need a host workstation with installed python 2.6+.

Buiding:

<pre>
sudo pip install -r requirements.txt
sudo apt-get install pylint
</pre>


Running Static Analysis: 
<pre>
nose2 --junit-xml --with-coverage --coverage-report xml
</pre> 

Running Tests with Code Coverage: 

<pre>
nose2 --junit-xml --with-coverage --coverage-report xml
</pre> 


Publishing Results using **Testspace**: 

<pre>
testspace analysis.txt{issues} [Tests]nose2.xml{stock_alerter} coverage.xml $TESTSPACE_TOKEN/$BRANCH_NAME
</pre> 

Checkout the [Space](https://samples.testspace.com/projects/python.unittest). 

***
To replicate this sample: 
  - Account at www.testspace.com.
  - CI Environment Variable called **TESTSPACE_TOKEN** required:
    -  `TESTSPACE_TOKEN` = `credentials@my-org-name.testspace.com/my-project`
    - `credentials` set to `username:password` or your [access token](http://help.testspace.com/using-your-organization:user-settings).
    - `my-org-name.testspace.com/my-project` based on your *subdomain* and *project* names. Refer [here](http://help.testspace.com/reference:runner-reference#login-credentials) for more details. 
