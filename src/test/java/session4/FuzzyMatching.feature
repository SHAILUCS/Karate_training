Feature: 
  Lets see fuzzy matching

  Scenario: 
    Fuzzy verification
		# Ignore, Null, NotNull, Present, NotPresent
		* def json = {foo:'bar', lorem:null}
    * match json == {foo:'#ignore', lorem:'#null'}
 		* def json = {id:'bar', lorem:null}
    * match json == {id:'#notnull', lorem:'#null'}
 		* def json = {id:'bar', lorem:null}
    * match json == {id:'#present', lorem:'#null'}
    * match json == {id:'#present', lorem:'#null', dolor : '#notpresent'}
 	
    # optional fields
    * def json = {id:'bar'}
    * match json == {id:'#present', lorem:'##null', dolor : '#notpresent'}
    
    # Objects, Arrays, Numbers, Booleans and Strings
    * def json = {id:'bar', age:10, alive:true, skills:['java','selenium'],devices:{apple:'iphoneXR',android:'oneplus 11'}}
    * match json == {id:'#string',age:'#number',alive:'#boolean',skills:'#array',devices:'#object'}
    
    
    # UUID
    * def json = {id:'a9f7a56b-8d5c-455c-9d13-808461d17b91', age:10, alive:true, skills:['java','selenium'],devices:{apple:'iphoneXR',android:'oneplus 11'}}
    * match json.id == '#uuid'
    
    # Regular expression
    * def json = {id:'a9f7a56b-8d5c-455c-9d13-808461d17b91', type:'LOL' ,age:10, alive:true, skills:['java','selenium'],devices:{apple:'iphoneXR',android:'oneplus 11'}}
 		* match json.type == '#regex [A-Z]{3}'

		# Self validation expression
		* def json = {age:10}
 		* match json == {age:'#? _>0 && _<100'}
 		* match json.age == '#? _>0 && _<100'
 		# using js function
 		* def isAgeValid = function(a){ return a>0 && a<100 }
 		* match json.age == '#? isAgeValid(_)'
 		# performing run time calculations on the json data
 		* def json = {cel : 150, far: 302 }
 		* match json == {cel : '#number', far:'#? _ == $.cel*1.8+32'}
		 		
 		