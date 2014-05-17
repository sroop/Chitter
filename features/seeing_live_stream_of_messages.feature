Feature: User can see a live stream of cheeps
	In order to see what people are cheeping about
	As a user 
	I want to see all cheeps in chronological order

	Scenario: Open the homepage
		Given I am on the homepage
		Then I should see "Welcome to Chitter!"

	Scenario: Adding a cheep
		Given I am on the homepage
		When I fill in the "cheep" with "Cheep, Cheep!"
		And I press "Cheep!"
		Then I should see "Cheep, Cheep!"

