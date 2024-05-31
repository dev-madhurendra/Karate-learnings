Feature: Karate browser automation 

  Background:
    * configure driver = { type: 'chrome' }

  Scenario: google search, land on the YouTube, and search for knoldus.

    Given driver 'https://www.youtube.com/'
    # And input('input[name=q]', 'Youtube')
    # And click('input[name=btnK]')
    # When click("h3[class='LC20lb DKV0Md']")
    # Then waitForUrl('https://www.youtube.com/')
    And click('input[id=search]')
    And input('input[id=search]', 'knoldus')
    And click('button[id=search-icon-legacy]')
    And match driver.url == 'https://www.youtube.com/results?search_query=knoldus'