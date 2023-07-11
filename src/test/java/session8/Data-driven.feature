Feature: 
  Data driven tests

  Scenario Outline: 
    Read the data from example table
		# generic cucumber placeholder
    * print "<name>"
    * print "<country>"
    
    # header name can be used as variables
    * print name
    * print country

    Examples: 
      | name  | country |
      | monza | Italy   |
      | spa   | Belgium |

      
   Scenario Outline: 
    See the usage of if - else

		* print "<name>"
    * print "<country>"
		# if the name is "monza" I want to save "Hello" in result, else I want to save "Hi"		
		* def result = (name == "monza") ? ("Hello") : ("Hi")
		* print result
		* match result == "Hello"  
		
    Examples: 
      | name  | country |
      | monza | Italy   |
      | spa   | Belgium |
      
   Scenario Outline: 
    See the usage of NESTED if - else

		* print "<name>"
    * print "<country>"
		# if the name is "monza" I want to save "Hello" in result, else I want to save "Hi"		
		* def result = (name == "monza") ? ("Hello") : ("Hi")
		* print result
		* match result == (name == "monza") ? ("Hello") : ((name == "spa")?("Hi"):("some message"))
		
    Examples: 
      | name  | country |
      | monza | Italy   |
      | spa   | Belgium |
      
  