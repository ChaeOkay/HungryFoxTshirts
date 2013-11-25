Given(/^I see the inventory$/) do
  click_link 'inventory'
  page.should have_content @t.name
end

When(/^I set the size to "(.*?)"$/) do |option|
  page.select(option.upcase, :from => 'tshirt_size')
end

When(/^I set the quantity to '(\d+)'$/) do |qty|
  page.select(qty, :from => 'tshirt_qty')
end

When(/^I add the tshirt to the basket$/) do
  click_link 'Add to basket'
end

Then(/^the Basket should have '(\d+)' items$/) do |arg1|
  pending
end
