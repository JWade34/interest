

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

# user = User.create! name: "jwade", email: "justin@mckelveydesigns.com", password: "12", password_confirmation: "12"
#
# 20.times do
# user.pins.create title: Faker::Hacker.noun, remote_photo_url: "http://www.michaelkasumovic.com/wp-content/uploads/2012/12/beard.jpg"
# end



justin = User.create! name: "Justin", email: "justin@mckelveydesigns.com", password: "12345"

jonathan = User.create! name: "Jonathan", email: "jk@gmail.com", password: "54321"


categories = %w(sports nightlife food nature fashion technics transport people)
names = %w(Fun Picture Uglypic Crazything Dogs?)


30.times do
  user = [justin, jonathan].sample
  user.pins.create title: "#{names.sample.upcase}", remote_photo_url: "http://lorempixel.com/500/500/#{categories.sample}/"
end
