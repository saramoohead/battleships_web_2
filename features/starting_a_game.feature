Feature: Can play battleships online
  As a person wishing to play an online game
  So that I can have lots of fun
  I want to be able to play battleships

  Scenario: Starting new game
    Given I am on the homepage
    When I click on "new game"
    Then I should see "What's your name"