Feature: Article page
   Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"
    Given I am having article params

  Scenario: Getting new article page
   Given I am following new article page
   When I am on administration page
   And I should follow on Add New article page
   And I should see "New Article"
     
  Scenario: Creating new articles
    When I am on article create page
    When I enter with valid new datas
    And I should see "Successfully Saved"

  Scenario: Managing articles
    When I enter with valid edit datas
    And I should see "Successfully updated"

  Scenario: Listing articles
     Given I am on administration page
     And I should follow on View articles
     And I should see "View All Articles"

  Scenario: Article view page
    When I am on article view page
    And I should follow on view article page

  Scenario: Article Sorting with all
    When I am on administration page
    And I should follow on View articles
    And I should follow on Article sort by all page

   Scenario: Article Sorting with year
    When I am on administration page
    And I should follow on View articles
    And I should follow on Article sort by year page

  Scenario: Article Sorting with month
    When I am on administration page
    And I should follow on View articles
    And I should follow on Article sort by month page
