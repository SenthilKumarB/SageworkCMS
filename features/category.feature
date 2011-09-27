Feature: Category page
 Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"

 Scenario: Getting new categories page
   Given I am following new categories page
   When I am on administration page
   And I should follow on Add New Category page
   And I should see "New Category"
      
  Scenario: Creating new categories
    Given I am having category params
    When I am on category new page
    When I enter with valid new datas for category
    And I should see "Successfully Saved"

  Scenario: Managing categories
    Given I am having category params
    When I enter with valid edit datas for category
    And I should see "Successfully updated"
