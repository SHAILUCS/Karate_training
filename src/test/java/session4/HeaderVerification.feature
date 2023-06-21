Feature: 
  Lets verify the header responses

  Scenario: 
    Header verification

    Given url "https://reqres.in/api/users?page=2"
    When method GET
    Then status 200
    And print response
    * match header content-type == 'application/json; charset=utf-8'
    * match header transfer-encoding == 'chunked'
 
    