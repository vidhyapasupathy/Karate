@Putexample
Feature: Validate the put request

  Scenario: Verify the update user api
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "vidhya","job": "QA Mobile Engineer"}
    When method put
    Then status 200
    Then print response
    Then print responseStatus

  @Deleteexample
  Scenario: Verify the delete user api
    Given url 'https://reqres.in/api/users/2'
    When method delete
    Then status 204
    
  @For/IFstatement
  Scenario: Verify the condition for one user 
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
    * def result = response.data
    Then print 'result...',result
    * def myfunc =
    """
    function(arg){
    for(i=0; i<arg.length; i++){
    if(arg[i].id == 9)
    {
    return arg[i];
    }
    }
    }
    """
