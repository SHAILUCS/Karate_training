Feature:
Match - advance topics cntd

Scenario:
 Contains only demo
 * print karate.env
 * def jsonData = 
 """
 {
	company:"apple",
	employees:[
		{id:1,name:"shailendra"},
		{id:2,name:"jayant"},
		{id:3,name:"vishal"}
	]
 }
 """
 # Contains/not contains - simple
 * match jsonData contains {company:"#string"}
 * match jsonData !contains {age:"#number"}
 
 # Contains :- Arrays
 * match jsonData.employees[*].id contains 1
 * match jsonData.employees[*].id contains [1,2]
 * match jsonData.employees[*].id contains [2,1]
 * match jsonData.employees[*].id == [1,2,3]
 # * match jsonData.employees[*].id == [2,1,3]
 * match jsonData.employees[*].name contains "shailendra"
 * match jsonData.employees[*].name contains ["shailendra","jayant"]
 * match jsonData..name contains "shailendra"
 * match jsonData.employees contains [{id:2,name:"jayant"},{id:3,name:"vishal"},{id:1,name:"shailendra"}]
 * match jsonData.employees contains [{id:"#number",name:"#string"},{id:"#number",name:"#string"},{id:"#number",name:"#string"}]
 * match jsonData.employees contains [{id:"#number",name:"#string"}]
 
 # match contains only : array - no worry about ordering it verifies all elements
 * def jsonData = {foo:[1,2,3]}
 * match jsonData.foo contains only [2,1,3]
 * match jsonData.foo contains only [3,2,1]
 * match jsonData.foo contains only ["#number","#number","#number"]
 
 # match contains any : array - some elements
 * match jsonData.foo contains any [1,5,8]

 # match each : array - some elements
 * def jsonData = {foo:[ {bar:1,baz:"a"}, {bar:2,baz:"b"}, {bar:3,baz:"c"}, {bar:4,baz:"d"} ]}
 * match each jsonData.foo == {bar:"#number", baz:"#string"}
 * match each jsonData.foo contains {bar:"#number", baz:"#string"}
 * match each jsonData.foo contains {bar:"#number"}
 
 * match each jsonData.foo contains {bar:"#? _>=1 && _<=4"}
 * match each jsonData.foo contains {baz:"#? _ != 'z'"}
 
 * def isAbc = function(x){ return x=='a' || x=='b' || x=='c' || x=='d'}
 * match each jsonData.foo contains {baz : "#? isAbc(_)"}
 
 
 * def isXbc = function(x){ return x.baz=='a' || x.baz=='b' || x.baz=='c' || x.baz=='d'}
 * match each jsonData.foo contains "#? isXbc(_)"
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 