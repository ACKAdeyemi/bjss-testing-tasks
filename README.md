# <p align="center"> BJSS Testing Tasks </p>
<hr>

#### Task:

To deliver a working test framework that aims towards "best practices" and publish on a public GitHub repository. It needs to be simple and extendible, and it shouldn't be complex or contain bloat e.g. uncommented code. The framework should test the following:

**TEST 1:**
Navigate to https://the-internet.herokuapp.com/
Click Challenging DOM
Confirm that the red button label changes after it's clicked

**TEST 2:**
Navigate to https://the-internet.herokuapp.com/
Click Dynamically Loaded Page Elements and click Example 2: Element rendered after the fact
Confirm 'Hello World!' is rendered after the loading bar disappears

**TEST 3:**
POST to the http://dummy.restapiexample.com/ create route and verify you receive a response that indicates that a user was made.


This entire task makes use of:

* Ruby (programming language)
* Capybara (for web automation)
* Rspec (for testing framework)
* Httparty (for http requests to api)
* JSON gem (for parsing json)
