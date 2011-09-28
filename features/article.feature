Feature: Article page
   Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"

  Scenario: Getting new article page
   Given I am following new article page
   When I am on administration page
   And I should follow on Add New article page
   And I should see "New Article"
     
  Scenario: Creating new articles
    Given I am having article params
    When I am on article create page
    When I enter with valid new datas
    And I should see "Successfully Saved"

  Scenario: Managing articles
    Given I am having article params
    When I enter with valid edit datas
    And I should see "Successfully updated"

  Scenario: Listing articles
     Given I am on administration page
     And I should follow on View articles
     And I should see "View All Articles"
  