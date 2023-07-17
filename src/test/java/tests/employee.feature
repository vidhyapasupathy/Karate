@Getexample
Feature: Validate the get request

  Scenario: Verify all the employees data
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
    And match response.data[0].first_name contains 'Michael'
    And match response.data[0].first_name == '#string'
    And def name = response.data[0].first_name
    And def id = response.data[0].id
    Then print id

  @Getexamplejson
  Scenario: Validate the json response using Match Assertions
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
    Then print response
    Then match each response.data ==
      """
      {
        "id": "#number",
      "email": "#string",
      "first_name": "#string",
      "last_name": "#string",
      "avatar": "##string"
      }
      """

  @Postexample
  Scenario: Call another feature file
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200

  @Getexampleassertions
  Scenario: Validate the response value with exact value
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
    * assert response.data[0].first_name == 'Michael'
    * assert response.data[0].last_name  == 'Lawson'
    * def name = response.data[0].first_name
    * def lname = response.data[0].last_name
    * assert name + lname == 'MichaelLawson'
    * print response

  @Getexamplefuzzymatching
  Scenario: Validate the fuzzy matching response
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
    * string textResponse = response
    * print textResponse
    * def textResponse = karate.fromString(textResponse)
    * match textResponse == {page:'#number',per_page:'#notnull',total:'#present',total_pages:'#ignore',data:'#array',support:'##object'}
