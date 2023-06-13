Feature: 
  My first feature

  Background: 
    this is my bg desc

    Given print "Hellllloo"

  @tag1
  Scenario: My first scenario
    * print "Hello world"

  @tag2
  Scenario: 
    Second scenario for comments

    Given url ""
    And print "And"
    # multi
    # line
    # comment
    Then print "Then"

  @tag2
  Scenario: 
    Third scenario for actual API call

    Given url "https://reqres.in/api/users?page=2"
    When method GET
    Then status 200
    And print response

  @tag3
  Scenario: Single line JSON demo
    * def jsonData = [{"name":"Shailendra"},{"name":"Vishal"},{"name":"Vijay"}]
    * print jsonData
    * print jsonData[0].name

  @tag3
  Scenario: Multi line JSON demo
    * def jsonData =
      """
      [
      {"name":"Shailendra"},
      {"name":"Vishal"},
      {"name":"Vijay"}
      ]
      """
    * print jsonData
    * print jsonData[2].name

    
  @tag3
  Scenario: JSON from external file demo
    * def jsonData = read("jsonfilename.json")
    * print jsonData
    * print jsonData.menu.id

    