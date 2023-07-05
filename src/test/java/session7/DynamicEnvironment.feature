Feature: 
  Dynamic urls and global variables

  Background: 
    Given url ""

  Scenario: 
    Access the global variable

    * def url_value = "https://"+env+".gorest.co.in/public/v2/users"
    * print url_value
    * print env
    * print myVarName
    * print globalVar1

  Scenario: 
    Play with timeouts

    Given url "https://httpbin.org/image/jpeg"
    And header accept = 'image/jpeg'
    When method GET
    Then status 200
    And print response
    And match response == read('classpath:session5/coyote.jpg')
