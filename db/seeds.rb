require 'faker'

4.times do
  u = User.create(username: Faker::Lorem.word(), 
    name: Faker::Name.name(), 
    email: Faker::Internet.free_email(), 
    password_hash: "helloworld",
    password_salt: "helloworld")
end

puts "Seed finished"
puts "#{User.count} users created"