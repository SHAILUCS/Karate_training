Feature:
 Match advance features
 
 Scenario:
  SC: match text type response
  * def response = 'Error'
  * match response == 'Error'
  #* match response != 'Error'
  * def response = 'Health check ok!'
  * match response contains 'ok'
    
  Scenario:
	binary file verfication
	Given url "https://httpbin.org/image/jpeg"
	And header accept = 'image/jpeg'
	#When method GET
	Then status 200
	And print response
	And match response == read('coyote.jpg')
	#And match response == read('pig.png')
	
	Scenario:
	Case sensitiveness checks
	Given url "https://reqres.in/api/users?page=2"
	When method GET
	Then status 200
	And print response
	And match response.data[0].last_name == "Lawson"
	* def res = karate.lowerCase(response)
	And print res
	And match res.data[0].last_name == "lawson"
	
	
	
	
	