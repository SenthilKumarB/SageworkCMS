Feature: Category page
 Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"
   
  Scenario: Creating new categories
    Given I am having category params
    When I am on category new page
    When I enter with valid new datas for category
    And I should see "Successfully Saved"

  Scenario: Managing categories
    Given I am having category params
    When I enter with valid edit datas for category
    And I should see "Successfully updated"
