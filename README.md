[![Testspace](http://www.testspace.com/public/img/testspace_logo.png)](http://www.testspace.com)
***

## Python/Unittest sample for demonstrating Testspace based on the [test_driven_python repo](https://github.com/siddhi/test_driven_python)

Sample demonstrates techniques for using Testspace with Python code and the [`unittest` test framework](https://docs.python.org/2/library/unittest.html) together with [`cov-core` code coverage tool](https://pypi.python.org/pypi/cov-core) and [`nose2` runner](https://github.com/nose-devs/nose2).

[![Build Status](https://travis-ci.org/testspace-samples/python.unittest.svg?branch=master)](https://travis-ci.org/testspace-samples/python.unittest)
[![Space Health](https://samples.testspace.com/projects/91/spaces/310/badge)](https://samples.testspace.com/projects/91/spaces/310 "Test Cases")
[![Space Metric](https://samples.testspace.com/projects/91/spaces/310/metrics/209/badge)](https://samples.testspace.com/projects/91/spaces/310/metrics#metric-209 "Line/Statement Coverage")

***

In order to run this sample you will need a host workstation with installed python 2.6+.

<pre>
sudo pip install -r requirements.txt
nose2 --junit-xml --with-coverage --coverage-report xml
</pre>

Publishing results example: 

<pre>
testspace publish [Tests]nose2.xml coverage.xml 
</pre> 

Checkout the [Space](https://samples.testspace.com/projects/python/spaces/unittest). 

***

To fork this example using Travis requires:
  - Account at www.testspace.com.
  - Travis Environment Variable: 
    - `TESTSPACE_URL` = `credentials:@my-org-name.testspace.com/my-project/my-space`
    - `credentials` set to `username:password` or your [access token](http://help.testspace.com/using-your-organization:user-settings).
    - `my-org-name.testspace.com/my-project/my-space` based on your subdomain, project, and space names. Refer [here](http://help.testspace.com/reference:runner-reference#login-credentials) for more details. 
    