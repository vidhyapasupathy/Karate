@Postexample
Feature: Validate the post request

  Scenario: Verify the dummy sample rest api
    Given url 'https://reqres.in/api/users'
    And request {"name": "vidhya","job": "QA Engineer"}
    When method post
    Then status 201
    Then print response

  @Postexamplecall
  Scenario: Call another feature file
    Given url 'https://reqres.in/api/users'
    And request {"name": "vidhya","job": "QA Engineer"}
    When method post
    Then status 201
    And def output = call read('classpath:tests/user.feature')
    And print output.name
    
  @readCsv
  Scenario: read data from csv file 
    Then eval data = read('Book2.csv')
    And print data
  
