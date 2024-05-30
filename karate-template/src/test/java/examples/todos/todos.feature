Feature: Todo API Testing
  for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url 'https://jsonplaceholder.typicode.com'
    And header Content-Type = 'application/json'

  Scenario: get all tasks
    Given path 'todos'
    When method get
    Then status 200
    And match response[0].id == 1
    And match response[0].userId == 1
    And match response[0].title == 'delectus aut autem'
    And match response[0].completed == false
    # And match response.length == 200
    # And match each response.id == '#notnull'
    # And match each response.userId == '#notnull'
    # And match each response.title == '#string'
    # And match each response.completed == '#boolean'

  Scenario: get task by id
    Given path 'todos', 1
    When method get
    Then status 200
    And match response.id == 1
    And match response.userId == 1
    And match response.title == 'delectus aut autem'
    And match response.completed == false
    And match response.id == '#notnull'
    And match response.userId == '#notnull'
    And match response.title == '#string'
    And match response.completed == '#boolean'
