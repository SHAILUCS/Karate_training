Feature: 
  Dynamic data passing
  
  Background:
		* def token = "f13962838aea40c92dac45eaef75460fd3904bc16c24064221dbb6a21a63972a"

  Scenario: 
    Create a new user

    # curl -i -H "Accept:application/json" -H "Content-Type:application/json" -H "Authorization: Bearer f13962838aea40c92dac45eaef75460fd3904bc16c24064221dbb6a21a63972a" -XPOST "https://gorest.co.in/public/v2/users" -d '{"name":"Tenali Ramakrishna", "gender":"male", "email":"tenali.ramakrishna@15ce.com", "status":"active"}'
    Given url "https://gorest.co.in/public/v2/users"
    And configure headers = {Accept:"application/json", Content-Type:"application/json"}
    And header Authorization =  "Bearer "+token
    And def jsonData =
      """
      {
      name:"Tenali Ramakrishna", 
      gender:"male",  
      status:"active"
      }
      """
      
    #################  
    And def getEmail = 
    """
  	  function(){
   		 	return "tenali.rama"+Date.now()+"@emaildomain.com";
  	  }
    """  
    And def email_val =  getEmail()
    And print email_val
    And set jsonData.email = email_val
    #################
    
    And request jsonData
    And method POST
    Then status 201
    And print response
    
    ##################
    And def id = response.id
    Given url "https://gorest.co.in/public/v2/users/"+id
    And header Authorization =  "Bearer "+token
    And method GET
    Then status 200
    And print response
    * match response contains {gender: "male",name: "Tenali Ramakrishna",id: "#number",email: "#string",status: "active"}
    * match response.id == id
    * match response.email == email_val
    
    
    Scenario: 
    Create a new user - external json file

    # curl -i -H "Accept:application/json" -H "Content-Type:application/json" -H "Authorization: Bearer f13962838aea40c92dac45eaef75460fd3904bc16c24064221dbb6a21a63972a" -XPOST "https://gorest.co.in/public/v2/users" -d '{"name":"Tenali Ramakrishna", "gender":"male", "email":"tenali.ramakrishna@15ce.com", "status":"active"}'
    Given url "https://gorest.co.in/public/v2/users"
    And configure headers = {Accept:"application/json", Content-Type:"application/json"}
    And header Authorization =  "Bearer "+token
    And def jsonData = read("classpath:jsonfiles/sample.json")
      
    #################  
    And def getEmail = 
    """
  	  function(){
   		 	return "tenali.rama"+Date.now()+"@emaildomain.com";
  	  }
    """  
    And def email_val =  getEmail()
    And print email_val
    And set jsonData.email = email_val
    #################
    
    And request jsonData
    And method POST
    Then status 201
    And print response
    
    ##################
    And def id = response.id
    Given url "https://gorest.co.in/public/v2/users/"+id
    And header Authorization =  "Bearer "+token
    And method GET
    Then status 200
    And print response
    * match response contains {gender: "male",name: "Tenali Rama",id: "#number",email: "#string",status: "active"}
    * match response.id == id
    * match response.email == email_val
    
    
    
