Feature: User can see a live stream of cheeps
	In order to see what people are cheeping about
	As a brand new user 
	I want to sign up, log in and see all cheeps in chronological order

	Scenario: Open the homepage
		Given I am on the homepage
		Then I should see "Welcome to Chitter!"
		And I should see "Sign Up"
		And I should see "Login"

	Scenario: Signing up
		Given I am on the homepage
		When I fill in the form and press the "Sign Up" button
		Then I am logged in

