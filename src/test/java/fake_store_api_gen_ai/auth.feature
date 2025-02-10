Feature: Authentication

  Background:
    * url baseUrl

  Scenario: Login and get token
    Given url baseUrl + '/auth/login'
    And request { username: 'mor_2314', password: '83r5^_' }
    When method POST
    Then status 200
    And def token = response.token
    * karate.set('token', token)