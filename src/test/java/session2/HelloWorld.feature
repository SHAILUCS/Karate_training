Feature: 
  Some description about my feature file > I am printing hello world

  Background: 
    Given url "https://reqres.in/"

  @smoke
  Scenario: 
    Hello world scenario

    # Hello this is my comment for future maintainer of this code
    # Multi
    # line
    # comments
    * print "Hello World"

  @sanity
  Scenario: 
    Get API call

    Given url "https://reqres.in/api/users?page=2"
    When method GET
    Then status 200
    And print response

  @sanity @regression
  Scenario: 
    Get API call using param and path

    Given path "api/users"
    And param page = 2
    When method GET
    Then status 200
    And print response

  @sanity @regression @core-feature
  Scenario: 
    POST API call

    Given path "api/users"
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And print response

  Scenario: 
    PUT API call

    Given path "api/users/2"
    And request
      """
      {
          "name": "morpheus",
          "job": "zion resident"
      }
      """
    When method PUT
    Then status 200
    And print response

  Scenario: 
    DELETE API call

    Given path "api/users/2"
    When method DELETE
    Then status 204

  Scenario: 
    Variable creation Demo

    * def v1 = 10
    * print v1
    
    
  Scenario: 
    Variable Addition Demo

    * def v1 = 10
    * def v2 = 20
    * def v3 = v1 + v2
    * print v3
    * print v1 + v2 + v3
    
        
  Scenario: 
    Variable Addition Demo with string printing

    * def v1 = 10
    * def v2 = 20
    * def v3 = v1 + v2
    * print "Addition Result is = " + v3
    * print "Addition Result is = " + (v1 + v2 + v3)
    
    