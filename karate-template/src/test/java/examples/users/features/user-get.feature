Feature: Get Method API Testing of User
    Background:
        * url baseUserUrl
        And header Content-Type = 'application/json'

    Scenario: Get all user
        Given path 'users'
        When method get
        Then status 200
        And match response.data == "#array"
    
    Scenario: Get users by page
        Given path 'users'
        Given params page = 2
        When method get
        Then status 200
        And match response.page == 2
        And match response.data == "#array"

    Scenario: Get user by id
        Given path 'users', 1
        When method get 
        Then status 200
        And match response.data == "#object"
        And match response.data.id == 1
        * def userDataSchema = 
        """
        {
            "id": "#number",
            "email": "#string",
            "first_name": "#string",
            "last_name": "#string",
            "avatar": "#string"
        }
        """

        * def supportDataSchema = 
        """
        {
            "url": "#string",
            "text": "#string"
        }
        """
        And match response.data == userDataSchema
        And match response.support == supportDataSchema

    # Scenario: Get user by id (JSON validation third party)
    #     Given path 'users', 1
    #     When method get 
    #     * string schema = read('file:src/test/java/examples/users/resources/user-schema.json')
    #     * string json = read('products.json')
    #     * def SchemaUtils = Java.type('com.intuit.karate.demo.util.SchemaUtils')
    #     * assert SchemaUtils.isValid(json, schema)
        
    


