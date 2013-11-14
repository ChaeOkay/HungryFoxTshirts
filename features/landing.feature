Feature: Shared
In order to get information about wolf t shirts
As a customer
I want to access categories

Scenario: Visit home page
  Given I am at the landing page
  Then I should see "Hungry Wolf T Shirts"

Scenario: Visit about page
  Given I am at the landing page
  When I click on "About"
  Then I should see "Rio, Come Undone"

Scenario: Show author
  Given I am at the landing page
  When I click on "Chae O'Keefe"
  Then I am redirected to "chaeokeefe.com"
