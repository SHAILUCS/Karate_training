Feature: 
  Lets see how contains / not contains works

  Scenario: 
    Contains verification on header

    Given url "https://reqres.in/api/users?page=2"
    When method GET
    Then status 200
    And print response
    * match header content-type contains 'application/json'
 
 
  Scenario: 
    Contains verification on json response
		* def jsonData = { bar: 1, baz: 'hello', ban: 'world'}
		* match jsonData contains {bar : 1} 
		* match jsonData contains {baz: 'hello'} 
		* match jsonData contains {ban: 'world',baz: 'hello'}   
		
 
  Scenario: 
    Not-Contains verification on json response
		* def jsonData = { bar: 1, baz: 'hello', ban: 'world'}
		* match jsonData !contains { bar: 1} 
		
		
		
