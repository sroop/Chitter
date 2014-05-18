Feature: User can sign in to Chitter
	In order to use Chitter
	As a signed up user
	I want to be able to sign in

	Scenario: Open the home page
		Given I am on the home page
		Then I should see "Sign In!"

	Scenario: Signing in to Chitter with the correct credentials
		Given I am a signed up user
		And I click on "Sign In!"
		When I fill in "email" with "sroopsunar@hotmail.com"
		And I fill in "password" with "123"
		And I press "Go!"
		Then I should be logged in