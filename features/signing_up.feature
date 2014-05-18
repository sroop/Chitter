Feature: User can sign up to Chitter
	In order to use Chitter
	As a brand new user
	I want to be able to sign up

	Scenario: Open the home page
		Given I am on the home page
		Then I should see "Sign Up!"

	Scenario: Signing up for Chitter
		Given I click on "Sign Up!"
		When I fill in "name" with "Sroop Sunar"
		And I fill in "email" with "sroopsunar@hotmail.com"
		And I fill in "password" with "123"
		And I fill in "password_confirmation" with "123"
		And I press "Go!"
		Then I should be logged in
