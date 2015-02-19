

#   user = User.create! status: 'active',
#                       email: Faker::Internet.email,
#                       password: 'password',
#                       password_confirmation: 'password',
#                       name: Faker::Name.name,
#
# 20.times do
#   user.pins.create title: Faker::Hacker.noun,
#                    photo_url: Faker::Avatar.image
# end

user = User.create! name: "jwade", email: "justin@mckelveydesigns.com", password: "12", password_confirmation: "12"

20.times do
user.pins.create title: Faker::Hacker.noun, photo_url: Faker::Avatar.image
end
