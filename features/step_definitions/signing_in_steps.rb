Given(/^I am a signed up user$/) do
  user = User.create(name: "Sroop Sunar",
                email: "sroopsunar@hotmail.com",
                username: "sroopsunar",
                password: "123")
end

Then(/^I should not be logged in$/) do
  expect(page).to have_content("Please sign in!")
end