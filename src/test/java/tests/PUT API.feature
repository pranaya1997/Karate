Feature: This feature will describe about how we can update user details

  Background: 
    * url 'https://gorest.co.in/public/v2/users'
    * def token = 'f32162f833c40154c6a26e8eb620d54d48d42da0e4f3f36d77852d5203aedd08'
    * header Authorization = 'Bearer ' + token

  Scenario: PUT api request
    Given path '/664177'
    And request ({"gender": "male", "status": "inactive"})
    When method put
    Then status 200
    And print response
