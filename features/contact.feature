Feature: Contact page
  Scenario: Contacting Sagework
    Given I am contacting sagework
    When I am on contact page
    When I enter with valid contacting details
    And I should see "Your Contact Mail successfully sent to us, we will get back to you soon..."