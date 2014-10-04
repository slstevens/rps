Feature: Playing the game
	In order to play Rock Paper Scissors
	As a newly registered player
	I want to choose rock, paper or scissors

Scenario: Choosing your object
	Given I am on the game page
	When I should select the form field corresponding to the image
	And I should click on "Go!"
	And I should see the result of the Game
