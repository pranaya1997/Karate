Feature: Karate configuration demo

  Background: 
    * url baseURL
    * header Accept = 'Application/json'

  # Get with URl
  Scenario: Get API
    Given path ''
    When method GET
    Then status 200
    And print response
