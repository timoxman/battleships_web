Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

Scenario: Navigate to new game page
  Given I am on the homepage
  When I follow "New Game"
  Then I should see "What's your name?"

Scenario: Registering
  Given I am on new game
  When I fill in "name" with "myname"
  And I press "submit"
  Then I should see "myname"