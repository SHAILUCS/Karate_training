Feature: 
  Advance features: * Not Contains check within array , Type conversion > string to number , Commonly Needed Utilities - Calling java codes in karate scripts

  Scenario: Not Contains check within array
    * def jsonData =
      """
      {
      company:
      	[
      		{
      		id:"1",
      		name:"apple"
      		},
      		{
      		id:"2",
      		name:"google"
      		}
      	]
      }
      """
    * match jsonData.company[*].name contains "apple"
    * match jsonData.company[*].name !contains "meta"

  Scenario: Type conversion > string to number
	
	# first way
	* def var1 = "10"
	* def convertToInt = 
	"""
		function(x){
			return parseInt(x);
		}
	"""
	* def var_int = convertToInt(var1)
	* def result = var_int + 10
	* print result
	# another way
	* def var1 = "10"
	* def result = var1*1 + 10
	* print result
	
	Scenario: Commonly Needed Utilities - Calling java codes in karate scripts
	# first way
	* def getDate = 
	"""
	function(){
		
		var simpleDateFormatClass = Java.type("java.text.SimpleDateFormat");
		var objSdf = new simpleDateFormatClass("MM-dd-yyyy");
		var dateClass = Java.type("java.util.Date");
		var objDate = new dateClass();
		
		var output = objSdf.format(objDate);
		return output;
	}
	"""
	* def dt = getDate()
	* print dt
	* print getDate()
	
	# another way
	* def getDate = 
	"""
	function(){
		
		var simpleDateFormatClass = Java.type("java.text.SimpleDateFormat");
		var objSdf = new simpleDateFormatClass("MM-dd-yyyy");
		var objDate = new java.util.Date();
		
		var output = objSdf.format(objDate);
		return output;
	}
	"""
	* def dt = getDate()
	* print dt
	* print getDate()
	
	# we will call our own class methods
	* def add2Nums = 
	""" 
	function(x, y){
		var additionClass = Java.type("session8.Addition");
		var obj = new additionClass(); 
		return obj.add(x, y)
	}
	"""
	* def add3Nums = 
	""" 
	function(x, y, z){
		var additionClass = Java.type("session8.Addition");
		var obj = new additionClass(); 
		return obj.add(x, y, z)
	}
	"""
	* print add3Nums(2,3,5)
	
	Scenario:
   Calling another feature over here
   
   * call read("CalledF.feature")
   
   
   	
	Scenario:
   Calling another complex feature over here
   
   * def jsonResponse = call read("CalledF2.feature") [{em:"eve.holt@reqres.in",pa:"pistol"},{em:"eve.holt@reqres.in2",pa:"pistol2"}]
   * print jsonResponse
   * match jsonResponse[0].response == { "id": "#number","token": "#string"}
   * match jsonResponse[1].response == { "error": "Note: Only defined users succeed registration"}
   * def tokenVal = jsonResponse[0].response.token
   * print tokenVal
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
	