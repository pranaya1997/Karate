Feature: GET API Demo

  Background: 
    * url 'https://gorest.co.in/public/v2/users'
    * header Accept = 'Application/json'

  # Get with URl
  Scenario: Get API way1
    Given url 'https://gorest.co.in/public/v2/users'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  # Get with Baground
  Scenario: Get API way2
    Given path ''
    When method GET
    Then status 200
    And print response

  # Get with path and param
  Scenario: Get API way3
    Given path ''
    And param page = 1
    When method GET
    Then status 200
    And print response

  # Get with Assertion
  Scenario: Get API way4
    Given path ''
    And param page = 1
    When method GET
    Then status 200
    And print response
    And assert response.length == 10
    And match $.[0].name == "#string"
    And match $.[1].email == "#string"
    And match $.[2].gender == "#string"
    And match $.[3].status == "#string"
