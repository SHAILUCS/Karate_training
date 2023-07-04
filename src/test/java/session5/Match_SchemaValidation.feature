Feature:
 Schema validation
 
 Scenario:
  SC: Schema validation
  * def jsonData = { count:10, dogData:{ age:10, breed:'labra' }}
  * def dogSchema = {age:'#number', breed:'#string'}
  * def animalSchema = ({count : '#number', dogData : '##(dogSchema)'})
  * match jsonData == animalSchema
  
    
  