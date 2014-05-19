Then(/^I should see:$/) do
  expect(page).to have_content("Welcome to Chitter!")
end

When(/^I fill in the "(.*?)" with "(.*?)"$/) do |cheep, text|
  fill_in cheep, with: text
end
