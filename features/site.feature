Feature: Site administration page
   Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"

  Scenario: Site administration setting page
    Given I am having site administration setting params
    When I am on administration page
    When I follow on setting page
    When I enter with valid settings datas

  Scenario: Site Administration Files Upload page
    Given I am having site administration file upload params
    When I am on administration page
    When I follow on files page
    When I enter with valid files datas
    And I should see "Successfully uploaded"

  Scenario: Site Administration Files List page
    Given I am having site administration file list params
    When I am on administration page
    When I follow on files page
    When I enter with valid files list datas
    And I should see "README"

  Scenario: Site Administraion Logout Page
    Given I am logout user page
    When I follow on logout link
    And I should see "Logout successful!"