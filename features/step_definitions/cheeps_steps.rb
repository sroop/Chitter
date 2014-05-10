Then(/^I should see:$/) do |table|
  # table is a Cucumber::Ast::Table
  expect(page).to have_content("Welcome to Chitter!")
end