Given /^I am at the landing page$/ do
  visit root_path
end

Then /^I should see "(.*?)"$/  do |text|
  page.should have_content text
end

When /^I click on "(.*?)"$/ do |link|
  visit root_path
  click_on link
end

Then /^I am redirected to "(.*?)"$/ do |url|
  destination = current_path.to_s
  destination.include? url
end
