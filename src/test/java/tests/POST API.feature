Feature: POST API Demo

  Background: 
    * def token = 'f32162f833c40154c6a26e8eb620d54d48d42da0e4f3f36d77852d5203aedd08'
    * url 'https://gorest.co.in/public/v2/users'
    * header Authorization = 'Bearer ' + token
    * def expResponseBody = read('responseBody.json')

  # Simple post request
  Scenario: POST API Way1
    Given url 'https://gorest.co.in/public/v2/users'
    And header Authorization = 'Bearer ' + 'f32162f833c40154c6a26e8eb620d54d48d42da0e4f3f36d77852d5203aedd08'
    And request {"name":"pk9", "gender":"male", "email":"pk9@15ce.com", "status":"active"}
    When method post
    Then status 201
    And print response

  # Using Background
  Scenario: POST API Way2
    Given path ''
    And request {"name":"pk10", "gender":"male", "email":"pk10@15ce.com", "status":"active"}
    When method post
    Then status 201
    And match response == expResponseBody
    And print response
    
