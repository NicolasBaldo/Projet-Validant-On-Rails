require 'faker'


10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    email: Faker::Internet.email,
    age: rand(18..70)
  )
end

20.times do

user = User.all.sample
gossip = user.gossips.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph
  )
puts "Gossip créé : #{gossip.title} par #{user.first_name} #{user.last_name}"
end


