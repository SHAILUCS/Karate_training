Feature: Carts API

  Background:
    * url baseUrl
    * header Authorization = 'Bearer ' + authToken

  Scenario: Get user carts
    Given path 'carts/user/2'
    When method GET
    Then status 200

  Scenario: Add new cart
    Given path 'carts'
    And request { userId: 5, date: '2020-02-03', products: [{ productId: 5, quantity: 1 }, { productId: 1, quantity: 5 }] }
    When method POST
    Then status 200

  Scenario: Update a cart
    Given path 'carts/7'
    And request { userId: 3, date: '2019-12-10', products: [{ productId: 1, quantity: 3 }] }
    When method PUT
    Then status 200

  Scenario: Delete a cart
    Given path 'carts/6'
    When method DELETE
    Then status 200