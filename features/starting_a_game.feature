Feature: Can play battleships online
  As a person wishing to play an online game
  So that I can have lots of fun
  I want to be able to play battleships

  Scenario: Registering for a new game
    Given I am on the homepage
    When I type in my "name" with "Max"
    And I click "register"
    Then I should see "Welcome, Max."

  Scenario: Registering anonymously
    Given I am on the homepage
    When I type in my "name" with ""
    And I click "register"
    Then I should see "Welcome, Player 1."

  Scenario: Starting a game
    Given I have finished registering for a new game
    When I click "Start game"
    Then I should see my battleship board.


