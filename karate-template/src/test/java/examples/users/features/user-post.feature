Feature: Post method API testing of User
    Background:
        * url baseUserUrl

    Scenario: Create a user
        Given path 'users'
        * def newUser = 
        """
        {
            "name": "morpheus",
            "job": "leader"
        }
        """
        Given request newUser
        When method post
        Then status 201
        And match response == "#object"
        And match response.name == 'morpheus'
        And match response.job == 'leader'
        And match response.id != null
        And match response.createdAt != null
        
