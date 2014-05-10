Then(/^I should see:$/) do
  expect(page).to have_content("Welcome to Chitter!")
end

When(/^I fill in the form and press the "(.*?)" button$/) do |button|
  fill_in 'user', with: 'Sroop Sunar'
  fill_in 'email', with: 'sroop@sunar.com'
  fill_in 'password', with: '1234'
  fill_in 'username', with: 'sroopsunar'
  click_on button
end

Then(/^I am logged in$/) do
  visit '/user'
end