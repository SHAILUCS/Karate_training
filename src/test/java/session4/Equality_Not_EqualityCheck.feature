Feature: 
  Lets see how == and != works

   Scenario: 
    equality check
		* def jsonData = { bar: 1, baz: 'hello', ban: 'world'}
		* match jsonData.bar == 1  
		* match jsonData.baz == 'hello' 
		* match jsonData == {ban: 'world',baz: 'hello',bar:1}   

   Scenario: 
    non-equality check
		* def jsonData = { bar: 1, baz: 'hello', ban: 'world'}
		* match jsonData.bar != 10  
		* match jsonData != {ban: 'world',baz: 'hello',bar:1}   
		