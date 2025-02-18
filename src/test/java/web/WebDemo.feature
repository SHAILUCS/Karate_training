@tag
Feature: Title of your feature
  I want to use this template for my feature file

  @tag1
  Scenario: Launch chrome and open google
    Given driver 'https://www.google.co.in'
    And input ('input[name=q]','karate dsl')
    Then quit() 
    
