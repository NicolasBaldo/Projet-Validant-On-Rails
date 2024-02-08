Projet Validant THP sur RAILS de Nicolas Baldo : 

3 Applications : 

------------------------------------------------------------------------------------------------------------------------------------------

°Free_Doc : 
(Application de type Doctolib)

La commande Test pour vérifier que tout soir bien assigné : 

tp Doctor.includes(:city, :specialities, :appointments, :patients).all 

------------------------------------------------------------------------------------------------------------------------------------------

°AIRDOGNB :
(Application Pour Dogsitters)

Les Commandes pour vérifier chaque Models : 
tp City.all
tp Dogsitter.all
tp Dog.all
tp Stroll.all

------------------------------------------------------------------------------------------------------------------------------------------


° GossipProject : 
(Apllication à potins)

Les commandes pour vérifier chaque Models : 
tp User.all
tp City.all
tp Gossip.all
tp Tag.all
tp PrivateMessage.all
tp Recipient.all


Le Faker pour générer 10 Users : 

10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    email: Faker::Internet.email,
    age: rand(18..70)
  )
end


Le Faker pour générer 20 Gossips : 

20.times do

user = User.all.sample
gossip = user.gossips.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph
  )
puts "Gossip créé : #{gossip.title} par #{user.first_name} #{user.last_name}"
end

------------------------------------------------------------------------------------------------------------------------------------------










