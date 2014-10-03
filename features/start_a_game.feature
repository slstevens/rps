Feature: Starting the game
	In order to play Rock Paper Scissors
	As a frustrated marketeer
	I want to start a new game

Scenario: Clicking New Game
	Given I am on the homepage
	Then I should see "What's your name?"
	And I should fill in the "name" field with "Sean"
	And I should click on "Start Game!"
	Then I should see "Hey, Sean!"
	And I should see "Let's play Rock Paper Scissors!"