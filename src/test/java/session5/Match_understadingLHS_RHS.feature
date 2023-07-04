Feature:
 Understading the LHS and RHS of Match keyword
 
 Scenario:
  SC: Understading the LHS and RHS of Match keyword
  # ALLOWED
  * match (3+3) == (5+1)
  * def jsonData = {company:'apple'}
  #* match 'apple' == jsonData.company
  * match jsonData.company  == 'apple'
  
    
  