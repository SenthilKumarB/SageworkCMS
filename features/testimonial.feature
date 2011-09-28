Feature: Testimonial page
 Background: Login Session
    Given I am the registered user admin
    When I am on the login page
    When I login with valid credentials
    And I should see "Login successful!"

 Scenario: Getting new Testimonial page
   Given I am following new testimonial page
   When I am on administration page
   And I should follow on Add New testimonial page
   And I should see "New Testimonial Page"

 Scenario: Creating new Testimonial
   Given I am having testimonial params
   When I am on testimonial new page
   When I enter with valid new datas for testimonial
   And I should see "Testimonial Successfully saved"

  Scenario: Managing Testimonial
    Given I am having testimonial params
    When I enter with valid edit datas for testimonial
    And I should see "Testimonial Successfully updated"

  Scenario: Listing Testimonials
    Given I am on administration page
    And I should follow on View testimonials
    And I should see "View All Testimonials"
