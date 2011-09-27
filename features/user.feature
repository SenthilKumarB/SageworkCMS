Feature: Creating User

	Scenario: create admin user
		Given I enter required values to create user
		Given I have no user
		Then I need to create new admin user
