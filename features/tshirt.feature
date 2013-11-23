  Feature: Shared
In order to buy a Tshirt
As a customer
I want to see Tshirt information

Scenario: Show Tshirt name
  Given I am at the landing page
  Then I should see "Number1"

Scenario: Show Tshirt description
  Given I am at the landing page
  Then I should see "awesome"

Scenario: Show Tshirt size
  Given I am at the landing page
  Then I should see "sizes: xxxxxl"

Scenario: Show Tshirt cost
  Given I am at the landing page
  Then I should see "$777.00"
