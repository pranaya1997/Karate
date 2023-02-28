Feature: Karate configuration demo

  Background: 
    * url baseUrl
    * header Authorization = 'Bearer '+ token
    * header Accept = 'Application/json'

  # Get request using karate-config.js
  Scenario: Get users
    Given path ''
    When method GET
    Then status 200
    And print response
    
   # Post request using karate-config.js
   Scenario: Create new user
   * path ''
   * def reqBody = read('requestBody.json')
   * def newName = randomName
   * def newEmail = randomEmail
   * set reqBody.name = newName
   * set reqBody.email = newEmail
   And request (reqBody)
   When method post
   Then status 201
   And print response
