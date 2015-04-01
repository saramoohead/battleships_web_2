Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I type in my "([^"]*)" with "([^"]*)"$/) do |field, name|
  fill_in(field, :with => name)
end

When(/^I click "([^"]*)"$/) do |value|
  click_button(value)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I have finished registering for a new game$/) do
  visit('/new_game')  
end

Then(/^I should see my battleship board\.$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


