require 'faker'

4.times do
  u = User.create(username: Faker::Lorem.word(), 
    name: Faker::Name.name(), 
    email: Faker::Internet.free_email(), 
    password_hash: "helloworld",
    password_salt: "helloworld")
end

4.times do
  a = Artist.create(name: Faker::Name.name(),
    bio: Faker::Lorem.paragraph())
end

4.times do
  v = Venue.create(name: Faker::Name.name(), 
    bio: Faker::Lorem.paragraph(),
    address: ("#{Faker::Address.building_number()}" + " " +
      "#{Faker::Address.street_address()}" + " " +
      "#{Faker::Address.city()}" + " " +
      "#{Faker::Address.state()}" + " " +
      "#{Faker::Address.zip_code()}"))
end

4.times do
  e = Event.create(name: Faker::Name.name(),
    artist: Artist.find(rand(4) + 1), 
    date: ("#{Faker::Number.digit()}" + "#{Faker::Number.digit()}" + 
      "#{Faker::Number.digit()}" + "#{Faker::Number.digit()}" + "-" +
      "#{Faker::Number.digit()}" + "#{Faker::Number.digit()}" + "-" +
      "#{Faker::Number.digit()}" + "#{Faker::Number.digit()}"))
end


rand(5..8).times do
  a = Attend.create(user: User.find(rand(4) + 1),
    rating: rand(5),
    review: Faker::Lorem.paragraph())
end


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Artist.count} artists created"
puts "#{Venue.count} venues created"
puts "#{Event.count} events created"
puts "#{Attend.count} attends created"