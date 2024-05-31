Feature: Delete method API testing of User
    Background:
        * url baseUserUrl

    Scenario: Delete user
        Given path 'users', 1
        When method delete
        Then status 204
