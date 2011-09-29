Feature: New Page
   Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"
    Given I am having page params

  Scenario: Getting new  page
   Given I am following new page
   When I am on administration page
   And I should follow on Add New page
   And I should see "New Page"

  Scenario: Creating new page
    When I am on add new page
    When I enter with valid new datas for page
    And I should see "Successfully Saved"

  Scenario: Managing pages
    When I enter with valid edit datas for page
    And I should see "Successfully updated"

  Scenario: Listing pages
     Given I am on administration page
     And I should follow on View pages
     And I should see "View All Pages"

   Scenario: Page view page
    When I am on page view
    And I should follow on view page

  Scenario: Page Sorting with all
     When I am on administration page
     And I should follow on View pages
     And I should follow on Page sort by all page

    Scenario: Page Sorting with year
     When I am on administration page
     And I should follow on View pages
     And I should follow on Page sort by year page

   Scenario: Page Sorting with month
     When I am on administration page
     And I should follow on View pages
     And I should follow on Page sort by month page


