Feature: User Login Page
	Scenario: Recaptcha Error in login
		Given I am the registered user admin
		When I am on the login page
		When I login with invalid credentials
		And I should see "Recaptcha error"
	
	Scenario: User valid login
		Given I am the registered user admin
		When I am on the login page
		When I login with valid credentials
		And I should see "Login successful!"
