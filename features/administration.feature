Feature: Administration page
   Background: Login Session
    Given I am the registered user admin                               
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"

  Scenario: Getting administration page
   Given I am following administration page
   When I am on the home page
   And I should follow on administration page
   And I should see "Administration"