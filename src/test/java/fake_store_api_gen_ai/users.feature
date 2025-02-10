Feature: Users API

  Background:
    * url baseUrl
    * header Authorization = 'Bearer ' + authToken

  Scenario: Get a single user
    Given path 'users/1'
    When method GET
    Then status 200

  Scenario: Add new user
    Given path 'users'
    And request { email: 'John@gmail.com', username: 'johnd', password: 'm38rmF$', name: { firstname: 'John', lastname: 'Doe' }, address: { city: 'kilcoole', street: '7835 new road', number: 3, zipcode: '12926-3874', geolocation: { lat: '-37.3159', long: '81.1496' } }, phone: '1-570-236-7033' }
    When method POST
    Then status 200

  Scenario: Update a user
    Given path 'users/7'
    And request { email: 'John@gmail.com', username: 'johnd', password: 'm38rmF$', name: { firstname: 'John', lastname: 'Doe' }, address: { city: 'kilcoole', street: '7835 new road', number: 3, zipcode: '12926-3874', geolocation: { lat: '-37.3159', long: '81.1496' } }, phone: '1-570-236-7033' }
    When method PUT
    Then status 200

  Scenario: Delete a user
    Given path 'users/6'
    When method DELETE
    Then status 200