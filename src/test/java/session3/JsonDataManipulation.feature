Feature: 
  Perform json data manipulations

  Scenario: 
    Add some key-value pair in runtime

    * def jsonData =
      """
      {
      name:"apple",
      hq:'USA',
      }
      """
    * set jsonData.token = "tokenValue"
    * set jsonData.name = "Google"
    * set jsonData.products[] = "iPhone"
    * print jsonData

  Scenario: 
     Add some value in array

    * def jsonData =
      """
      {
      name:"apple",
      hq:'USA',
      products: ['iPhone','iPad','Mac']
      }
      """
    * set jsonData.products[3] = "AirPods"
    * print jsonData

   Scenario: 
     Add some object value in array

    * def jsonData = [{name:"Shailendra"},{name:"Vishal"},{name:"Vijay"}]
    * set jsonData[3].name = "Himanshu"
    * print jsonData
    * set jsonData[] = {name:"Jayant"}
    * print jsonData
    
    
   Scenario: 
     Set multiple values to the JSON object

    * def jsonData = {name:''}
    * print jsonData
    * set jsonData
    |path	|value	|
    |name	|'apple'|
    |hq		|'USA'	|
    * print jsonData
    * set jsonData
    |path|value|
    |products[0]|'iPhone'|
    |products[1]|'iPad'|
    |products[2]|'Mac'|
    * print jsonData
    * set jsonData.productsArr
    |path	|0				|1			|2		|
    |name	|'iPhone'	|'iPad'	|'Mac'|
    * print jsonData
    
   Scenario: 
    Remove & Delete values from the JSON object
      * def jsonData =
      """
      {
      name:"apple",
      hq:'USA',
      products: ['iPhone','iPad','Mac']
      }
      """
      * remove jsonData.hq
      * print jsonData
      * def keyVar = 'products'
      * eval delete jsonData[keyVar]
      * print jsonData
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    