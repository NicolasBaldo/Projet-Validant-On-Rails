# Création de mes Villes
city1 = City.create({ name: "Berlin" })
city2 = City.create({ name: "Wien" })

# Création des spécialités de mes Docteurs 
speciality1 = Speciality.create({ name: "Vétérinaire" })
speciality2 = Speciality.create({ name: "Cardiologue" })

# Création de mes Docteurs avec leurs spécialités
doctor1 = Doctor.create({ first_name: "Dr. Doolittle", city_id: city1.id, speciality: speciality1 })
doctor2 = Doctor.create({ first_name: "Dr. House", city_id: city2.id, speciality: speciality2})

# Création de mes Patients 
patient1 = Patient.create({ first_name: "Le Chien", last_name: "Rex" })
patient2 = Patient.create({ first_name: "Obi-Wan", last_name: "Kenobi" })

# Création de mes Rendez-vous 
appointment1 = Appointment.create({ doctor: doctor1, patient: patient1 })

# Pour tester : 
#tp Doctor.includes(:city, :specialities, :appointments, :patients).all


# LE CODE CI DESSOUS SONT MES PREMIERS ÉSSAIS : 


# Création de mes Villes
#city1 = City.create(name: "Berlin")
#city2 = City.create(name: "Wien")

# Création des spécialités de mes Docteurs 
#speciality1 = Speciality.create(name: "Vétérinaire")
#speciality2 = Speciality.create(name: "Cardiologue")

# Création de mes Docteurs avec leurs spécialités
#doctor1 = Doctor.create(first_name: "Dr. Doolittle", city_id: city1 ,speciality: speciality1)
#doctor2 = Doctor.create(first_name: "Dr. House", city_id: city2 ,speciality: speciality2)

# Création de mes Patients 
#patient1 = Patient.create(first_name: "Le Chien", last_name: "Rex")
#patient2 = Patient.create(first_name: "Obi-Wan", last_name: "Kenobi")

# Création de mes Rendez-vous 
#appointment1 = Appointment.create(doctor: doctor1, patient: patient1)












