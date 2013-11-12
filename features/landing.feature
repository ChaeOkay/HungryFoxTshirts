# features/landing.feature
Feature: Landing
In order to get information about wolf t shirts
As a customer
I want to access categories

Scenario: Visit home page
  Given I am at the landing page
  Then I should see "wolf t-shirts"
