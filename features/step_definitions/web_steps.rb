Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I click on "([^"]*)"$/) do |link|
  click_link(link)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end


Given(/^I have started a new game$/) do
  visit('/new_game')
end

When(/^I type in my "([^"]*)" with "([^"]*)"$/) do |field, name|
  fill_in(field, :with => name)
end

When(/^I click "([^"]*)"$/) do |value|
  click_button(value)
end
