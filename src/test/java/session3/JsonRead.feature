Feature: 
  Perform the Json Read operations

  Scenario: 
    Single line json example

    * def jsonData = {name:"apple",hq:'USA',products:['iPhone','iPad','Mac']}
    * print jsonData

  Scenario: 
    Multi-line json example

    * def jsonData =
      """
      {
      name:"apple",
      hq:'USA',
      products: ['iPhone','iPad','Mac']
      }
      """
    * print jsonData

  Scenario: 
    Fetching data from json example

    * def jsonData =
      """
      {
      name:"apple",
      hq:'USA',
      products: ['iPhone','iPad','Mac']
      }
      """
    * print jsonData
    * print jsonData.hq
    * def var1 = jsonData.name
    * print var1
    * print jsonData.products[1]

  Scenario: 
    Read data from external json

    * def jsonData = read("inputdata.json")
    * print jsonData
    * print jsonData.hq
    * def var1 = jsonData.name
    * print var1
    * print jsonData.products[1]
