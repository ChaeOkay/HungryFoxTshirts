Feature: Basket
In order for customers to buy a t-shirt
As a customer
I want to have items in a basket

Scenario: Add Item to Basket
  Given I am at the landing page
  And I see the inventory
  And I set the size to "xxxxxl"
  And I set the quantity to '2'
  When I add the tshirt to the basket
  Then the Basket should have '2' items
