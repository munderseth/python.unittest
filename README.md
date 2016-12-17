[![Testspace](http://www.testspace.com/img/Testspace.png)](http://www.testspace.com)

***

## Python/Unittest sample for demonstrating Testspace based on the [test_driven_python repo](https://github.com/siddhi/test_driven_python)

Sample demonstrates techniques for using Testspace with Python code and the [`unittest` test framework](https://docs.python.org/2/library/unittest.html) together with [`cov-core` code coverage tool](https://pypi.python.org/pypi/cov-core) and [`nose2` runner](https://github.com/nose-devs/nose2).

***

Example branching only: **development**

* Reference article: [git branching workflow](https://git-scm.com/book/en/v1/Git-Branching-Branching-Workflows)

*** 

In order to run this sample you will need a host workstation with installed python 2.6+.

Buiding:

<pre>
sudo pip install -r requirements.txt
sudo apt-get install pylint
</pre>


Running Static Analysis: 
<pre>
pylint stock_alerter/ -f parseable > analysis.txt
</pre> 

Running Tests with Code Coverage: 

<pre>
nose2 --junit-xml --with-coverage
</pre> 


Publishing Results using **Testspace**: 

<pre>
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace @.testspace.txt $TESTSPACE_TOKEN/$GITHUB_ORG:$REPO_NAME/$BRANCH_NAME#$BUILD_NUMBER
</pre> 

Checkout the published [Test Content](https://samples.testspace.com/projects/testspace-samples:python.unittest). Note that the `.testspace.txt` file contains the [set of files](http://help.testspace.com/how-to:publish-content#publishing-via-content-list-file) to publish. 

***

To replicate this sample: 
  - Setup account at www.testspace.com.
  - Create a Environment variable called `TESTSPACE_TOKEN`
     - `TESTSPACE_TOKEN` = `credentials@Your-Org-Name.testspace.com`
     - `credentials` set to `username:password` or your [access token](http://help.testspace.com/reference:client-reference#login-credentials)
     - To [use](http://help.testspace.com/how-to:add-to-ci) Testspace in a CI system, store `TESTSPACE_TOKEN` as a secure environment variable
