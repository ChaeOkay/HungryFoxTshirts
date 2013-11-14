Feature: Shared
In order to buy a Tshirt
As a customer
I want to see Tshirt information

Scenario: Show Tshirt name
  Given I am at the landing page
  Then I should see "001"

Scenario: Show Tshirt description
  Given I am at the landing page
  Then I should see "muscle shirt, vintage 80s, cotton, white"

Scenario: Show Tshirt size
  Given I am at the landing page
  Then I should see "size: m"

Scenario: Show Tshirt cost
  Given I am at the landing page
  Then I should see "$20.00"
