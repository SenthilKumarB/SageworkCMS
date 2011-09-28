Feature: White Paper page
 Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"

 Scenario: Getting new white paper page
   Given I am following new white paper page
   When I am on administration page
   And I should follow on Add New white paper page
   And I should see "New White Paper"

 Scenario: Creating new White paper
   Given I am having White Paper params
   When I am on white paper new page
   When I enter with valid new datas for white paper
   And I should see "WhitePaper Successfully upload"
