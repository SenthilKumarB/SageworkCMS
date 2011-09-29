Feature: Testimonial page
 Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"
    Given I am having testimonial params

 Scenario: Getting new Testimonial page
   Given I am following new testimonial page
   When I am on administration page
   And I should follow on Add New testimonial page
   And I should see "New Testimonial Page"

 Scenario: Creating new Testimonial
   When I am on testimonial new page
   When I enter with valid new datas for testimonial
   And I should see "Testimonial Successfully saved"

  Scenario: Managing Testimonial
    When I enter with valid edit datas for testimonial
    And I should see "Testimonial Successfully updated"

  Scenario: Listing Testimonials
    Given I am on administration page
    And I should follow on View testimonials
    And I should see "View All Testimonials"

  Scenario: Testimonial view page
    When I am on testimonial view page
    And I should follow on view testimonial page

  Scenario: Testimonial Sorting with all
     When I am on administration page
     And I should follow on View testimonials
     And I should follow on Testimonial sort by all page

    Scenario: Testimonial Sorting with year
     When I am on administration page
     And I should follow on View testimonials
     And I should follow on Testimonial sort by year page

   Scenario: Testimonial Sorting with month
     When I am on administration page
     And I should follow on View testimonials
     And I should follow on Testimonial sort by month page

