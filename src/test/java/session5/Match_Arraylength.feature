Feature:
 Array length validation
 
 Scenario:
  SC: Array length validation
  * def jsonData = { company:'apple',employees:[{name:'shailendra'},{name:'vishal'},{name:'himanshu'},{name:'ashok'}]}
  * def lenVar = jsonData.employees.length
  * match lenVar == 4
  * match jsonData.employees == '#[4]'
    
  