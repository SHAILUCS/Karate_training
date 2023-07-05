Feature: 
  Pass headers to the request

  Scenario: 
    header demo - key value pair

    # curl -i -H "Accept:application/json" -H "Content-Type:application/json" -H "Authorization: Bearer f13962838aea40c92dac45eaef75460fd3904bc16c24064221dbb6a21a63972a" -XGET "https://gorest.co.in/public/v2/users"
    Given url "https://gorest.co.in/public/v2/users"
    And header Accept = "application/json"
    And header Content-Type = "application/json"
    And header Authorization = "Bearer f13962838aea40c92dac45eaef75460fd3904bc16c24064221dbb6a21a63972a"
    And method GET
    Then status 200
    And print response

  Scenario: 
    header demo - headers as json

    Given url "https://gorest.co.in/public/v2/users"
    And def headerData = {Accept : "application/json", Content-Type : "application/json", Authorization : "Bearer f13962838aea40c92dac45eaef75460fd3904bc16c24064221dbb6a21a63972a"}
    And headers headerData
    And method GET
    Then status 200
    And print response
    
 Scenario: 
    header demo - headers using configure keyword

    Given url "https://gorest.co.in/public/v2/users"
    And configure headers = {Accept : "application/json", Content-Type : "application/json", Authorization : "Bearer f13962838aea40c92dac45eaef75460fd3904bc16c24064221dbb6a21a63972a"}
    And method GET
    Then status 200
    And print response