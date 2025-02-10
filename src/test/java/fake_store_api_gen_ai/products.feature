Feature: Products API

  Background:
    * url baseUrl
    * header Authorization = 'Bearer ' + authToken

  Scenario: Get all products
    Given path 'products'
    When method GET
    Then status 200

  Scenario: Add new product
    Given path 'products'
    And request { title: 'test product', price: 13.5, description: 'lorem ipsum set', image: 'https://i.pravatar.cc', category: 'electronic' }
    When method POST
    Then status 200

  Scenario: Update a product
    Given path 'products/7'
    And request { title: 'test product', price: 13.5, description: 'lorem ipsum set', image: 'https://i.pravatar.cc', category: 'electronic' }
    When method PUT
    Then status 200

  Scenario: Delete a product
    Given path 'products/6'
    When method DELETE
    Then status 200