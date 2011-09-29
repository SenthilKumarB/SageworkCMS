Feature: Site Map Page
  Background: Site Map Page
    Given I am on site map page
    
  Scenario: Site Map To Home Pages
    When I follow home link
    Then I should see "Consulting"
    And I should see "Development"
    And I should see "Outsourcing"

  Scenario: Site Map To News Pages
    When I follow news link
    And I should see "Site News"

  Scenario: Site Map To Services Pages
    When I follow services link
    And I should see "Services"

  Scenario: Site Map To About Us Pages
    When I follow about us link
    And I should see "ABOUT US"

  Scenario: Site Map To Contact Pages
    When I follow contact link
    And I should see "Contact Address"







