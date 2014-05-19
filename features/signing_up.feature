Feature: User can sign up to Chitter
	In order to use Chitter
	As a brand new user
	I want to be able to sign up

	Scenario: Open the home page
		Given I am on the home page
		Then I should see "Sign Up!"

	Scenario: Signing up for Chitter with correct credentials (happy path)
		Given I click on "Sign Up!"
		When I fill in "name" with "Sroop Sunar"
		And I fill in "email" with "sroop@sroop.com"
		And I fill in "username" with "sroopsy"
		And I fill in "password" with "123"
		And I fill in "password_confirmation" with "123"
		And I press "Sign Up!"
		Then I should be logged in

	Scenario: Signing up for Chitter with an email already taken (sad path)
		Given I click on "Sign Up!"
		When I fill in "name" with "Sroop Sunar"
		And I fill in "email" with "sroop@sunar.com"
		And that "sroop@sunar.com" already exists in the database
		And I fill in "username" with "sroopsy"
		And I fill in "password" with "123"
		And I fill in "password_confirmation" with "123"
		And I press "Sign Up!"
		Then I should not be logged in

	Scenario: Signing up for Chitter with a username already taken (sad path)
		Given I click on "Sign Up!"
		When I fill in "name" with "Sroop Sunar"
		And I fill in "email" with "sroop@hotmail.com"
		And I fill in "username" with "sroopsunar"
		And that "sroopsunar" already exists in the database
		And I fill in "password" with "123"
		And I fill in "password_confirmation" with "123"
		And I press "Sign Up!"
		Then I should not be logged in

	Scenario: Signing up for Chitter with incorrectly matching password and password confirmations (sad path)
		Given I click on "Sign Up!"
		When I fill in "name" with "Sroop Sunar"
		And I fill in "email" with "sroop@hotmail.com"
		And I fill in "username" with "sroopsunar"
		And I fill in "password" with "123"
		And I fill in "password_confirmation" with "wrong"
		And I press "Sign Up!"
		Then I should not be logged in



