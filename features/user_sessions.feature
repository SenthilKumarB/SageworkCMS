Feature: User Login Page
   Background: Login Session
    Given I am the registered user admin
    When I am on the login page

	Scenario: Cannot access page without authentication
		Given I am on administration page
		When I am on administration page
		And I should see "You must be logged in to access this page"

	Scenario: Recaptcha mismatch Error in login page
		When I login with invalid recaptcha credentials
		And I should see "Recaptcha error"
	
	Scenario: Username Mismatch Error in login page
		When I login with invalid login credentials
		And I should see "Login is not valid"

	Scenario: Password Mismatch Error in login page
		When I login with invalid password credentials
		And I should see "Password is not valid"
	
	Scenario: User valid login
		When I login with valid credentials
		And I should see "Login successful!"