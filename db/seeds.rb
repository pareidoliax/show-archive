require 'faker'

users = []
4.times do
  users << User.create(username: Faker::Lorem.word(), 
    name: Faker::Name.name(), 
    email: Faker::Internet.free_email(), 
    password_hash: "helloworld",
    password_salt: "helloworld")
end

artists = []
4.times do
  artists << Artist.create(name: Faker::Name.name(),
    bio: Faker::Lorem.paragraph())
end

venues = []
4.times do
  venues << Venue.create(name: Faker::Name.name(), 
    bio: Faker::Lorem.paragraph(),
    address: ("#{Faker::Address.building_number()}" + " " +
      "#{Faker::Address.street_address()}" + " " +
      "#{Faker::Address.city()}" + " " +
      "#{Faker::Address.state()}" + " " +
      "#{Faker::Address.zip_code()}"))
end

events = []
4.times do
  events << Event.create(name: Faker::Name.name(),
    artist: artists[rand(4)],
    #venue: venues[rand(4)], 
    date: ("#{Faker::Number.digit()}" + "#{Faker::Number.digit()}" + 
      "#{Faker::Number.digit()}" + "#{Faker::Number.digit()}" + "-" +
      "#{Faker::Number.digit()}" + "#{Faker::Number.digit()}" + "-" +
      "#{Faker::Number.digit()}" + "#{Faker::Number.digit()}"))
end

attends = []
rand(5..10).times do
  attends << Attend.create(user: users[rand(4)],
    #artist: artists[rand(4)],
    #venue: venues[rand(4)],
    #event: events[rand(4)],
    rating: rand(5),
    review: Faker::Lorem.paragraph())
end


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Artist.count} artists created"
puts "#{Venue.count} venues created"
puts "#{Event.count} events created"
puts "#{Attend.count} attends created"