Feature: Upload file API Test
    Background:
        * url fileBaseUrl
        And header Content-type = "image/png"
        And header filename = "test.png"

    Scenario: Upload file
        Given path '/'
        And request karate.read('file:src/test/java/examples/files/resources/Fantasy Art.jpeg')
        When method post
        Then status 201

