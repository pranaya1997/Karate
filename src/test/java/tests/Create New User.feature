Feature: Create new user in every post request without changing payload multiple times

  Background: 
    * def token = 'f32162f833c40154c6a26e8eb620d54d48d42da0e4f3f36d77852d5203aedd08'
    * header Authorization = 'Bearer ' + token
    * def random = Math.floor(Math.random()*1000)+1
    * def reqBody = read('requestBody.json')

Scenario: New User creation using post request
Given url 'https://gorest.co.in/public/v2/users'
And request reqBody
And set reqBody.name = 'Pranay'+random
And set reqBody.email = 'Pranay'+random+'@email.com'
When method post
Then status 201
And print response
