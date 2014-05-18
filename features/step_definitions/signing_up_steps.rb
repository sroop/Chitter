
Given(/^I click on "(.*?)"$/) do |button|
  visit '/'
  click_button(button)
end

Then(/^I should be logged in$/) do
  expect(page).to have_content("Welcome, Sroop Sunar")
end