Feature: User can sign out of Chitter
	In order to sign out of Chitter
	As a signed in user
	I want to be able to sign out

	Scenario: Open the home page
		Given I am signed in
		And I am on the homepage
		When I click on "Sign Out!"
		Then I should be logged out