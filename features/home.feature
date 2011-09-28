Feature: Static pages
   Scenario: About Page
      Given I am the about us page
      When I am on the about us page
      And I should see "ABOUT US"

    Scenario: Services Page
      Given I am the services page
      When I am on the services page
      And I should see "Services"

    Scenario: News Page
      Given I am the news page
      When I am on the news page
      And I should see "Site News"

    Scenario: Site Map Page
      Given I am the site map page
      When I am on the site map page
      And I should see "Site Map"
      Then I should see "HOME"
      And I should see "uncategorized"
      And I should see "Rails_Article"
