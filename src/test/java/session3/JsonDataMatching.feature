Feature: 
  Perform checks on json data

  Scenario: 
 		Compare the data of single key-value pair
 	* def result = read("inputdata.json")
 	* match result.name == "apple1"
 	
 	
  Scenario: 
 		Compare the data of single key-value pair
 	* def result = read("inputdata.json")
 	* match result == {hq:'USA',name:'apple',products:['iPhone','iPad','Mac']}