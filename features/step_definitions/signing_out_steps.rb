Given(/^I am signed in$/) do
  user = User.create(name: "Sroop Sunar",
                email: "sroopsunar@hotmail.com",
                username: "sroopsunar",
                password: "123",
                password_confirmation: "123")
  visit '/sessions/new'
  fill_in "email", with: "sroopsunar@hotmail.com"
  fill_in "password", with: "123"
  click_on "Go!"
  expect(page).to have_content("Welcome, Sroop Sunar")
end

Then(/^I should be logged out$/) do
  expect(page).to_not have_content("Welcome, Sroop Sunar")
end