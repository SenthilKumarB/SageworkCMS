Feature: Category page
 Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"
    Given I am having category params

 Scenario: Getting new categories page
   Given I am following new categories page
   When I am on administration page
   And I should follow on Add New Category page
   And I should see "New Category"
      
  Scenario: Creating new categories
    When I am on category new page
    When I enter with valid new datas for category
    And I should see "Successfully Saved"

  Scenario: Managing categories
    When I enter with valid edit datas for category
    And I should see "Successfully updated"

  Scenario: Listing categories
    Given I am on administration page
    And I should follow on View Categories 
    And I should see "View all Categories"

  Scenario: Category view page
    When I am on category view page
    And I should follow on view category page

  Scenario: Category Sorting with all
    When I am on administration page
    And I should follow on View Categories
    And I should follow on Category sort by all page

   Scenario: Category Sorting with year
    When I am on administration page
    And I should follow on View Categories
    And I should follow on Category sort by year page

  Scenario: Category Sorting with month
    When I am on administration page
    And I should follow on View Categories
    And I should follow on Category sort by month page

