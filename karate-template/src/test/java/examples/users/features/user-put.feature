Feature: Put method API testing of User
    Background:
        * url baseUserUrl

    Scenario: Update user
        Given path 'users', 1
        * def updateUser = 
        """
        {
            "name": "morpheus",
            "job": "leader-update"
        }
        """
        Given request updateUser
        When method put
        Then status 200
        And match response == "#object"
        And match response.name == "morpheus"
        And match response.job == "leader-update"
