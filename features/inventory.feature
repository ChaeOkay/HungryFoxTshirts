Feature: Inventory
In order for customers to select a t-shirt
As a customer
I want to see all t-shirts

Scenario: Seeing all tshirts
  Given I am at the landing page
  Given there are "3" t-shirts in the database
  When I click on "Inventory"
  Then I should see "3" t-shirts
