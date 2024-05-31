Feature: GraphQL API Test
    Background:
        * url graphqlBaseUrl
        * header Content-Type = 'application/json'

    Scenario: Get characters
        * text query =
        """
        {
            characters {
                results {
                    id
                    name
                    species
                    status
                    gender
                    type
                }
            }
        }
        """
        Given path 'graphql'
        And request { query: '#(query)' }
        When method post
        Then status 200
