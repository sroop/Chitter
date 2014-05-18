Given(/^I am a signed up user$/) do
  user = User.create(name: "Sroop Sunar",
                email: "sroopsunar@hotmail.com",
                username: "sroopsunar",
                password: "123")
end