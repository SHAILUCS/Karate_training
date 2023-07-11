Feature:
 This feature file will be called from some place else
 
 
 Scenario:
 	Register a user
	Given url "https://reqres.in/api/"
	And path "register"
	And request
	""" 
		{
	  email: "#(em)",
    password: "#(pa)"
		}
	"""
	When method POST