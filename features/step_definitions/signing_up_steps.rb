
Given(/^I click on "(.*?)"$/) do |button|
  visit '/'
  click_button(button)
end

Then(/^I should be logged in$/) do
  expect(page).to have_content("Welcome, Sroop Sunar")
end

When(/^that "(.*?)" already exists in the database$/) do |info|
      user = User.create(name: info,
                email: info,
                username: info,
                password: info,
                password_confirmation: info)
end

Then(/^I should not be logged in$/) do
  expect(page).to_not have_content("Welcome, Sroop Sunar")
  expect(page).to have_content("Sign up to Chitter")
end


