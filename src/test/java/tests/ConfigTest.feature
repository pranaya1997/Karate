Feature: Karate configuration demo

  Background: 
    * url baseUrl
    * header Accept = 'Application/json'

  # Get with URl
  Scenario: Get API
    Given path ''
    When method GET
    Then status 200
    And print response
