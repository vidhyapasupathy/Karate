Feature: Reusable function 

Scenario: Verify all the employees data
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
    Then def name = response.data[0].first_name   