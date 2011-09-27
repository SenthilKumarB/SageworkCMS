Feature: Comments page
   Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"

  Scenario: Creating new articles
    Given I need to enter comments in article
    When I enter with valid new comment data
    And I should see "Successfully commented"
