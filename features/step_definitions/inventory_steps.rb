Given /^there are "(\d+)" t\-shirts in the database$/  do |number|
  n = 1
  (number.to_i-1).times do
    t = Tshirt.create(name: "number#{n}", description: "awesome#{n}", cost: 777 + n*2)
    t.tsize << Tsize.create(name: 'xxxxxl')
    n += 1
  end
end

Then /^I should see "(\d+)" t\-shirts$/ do |number|
  page.should have_css(".tshirt", count: number.to_i)
end
