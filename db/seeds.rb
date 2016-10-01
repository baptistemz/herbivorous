User.destroy_all
VegetableProcess.destroy_all
Event.destroy_all
Seed.destroy_all

bapt = User.create!(username:'baptistemz' ,email: 'baptistem59@hotmail.com', password: '12345678', password_confirmation: '12345678')
coco = User.create!(username:'cocomz' ,email: 'cocomz@gmail.com', password: '12345678', password_confirmation: '12345678')

fenouil = bapt.vegetable_processes.create!(name:'fenouil',kind: :seed, climate: '10-20°C', environment:'indoor', maturation_length: 18, difficulty: 3)
poireaux = coco.vegetable_processes.create!(name:'poireaux',kind: :vegetable, climate: '0-10°C', environment:'outdoor', maturation_length: 35, difficulty: 4)
salade = coco.vegetable_processes.create!(name:'salade',kind: :vegetable, climate: '0-10°C', environment:'outdoor', maturation_length: 35, difficulty: 4)
fraises = coco.vegetable_processes.create!(name:'fraises',kind: :vegetable, climate: '0-10°C', environment:'outdoor', maturation_length: 35, difficulty: 4)
ananas = coco.vegetable_processes.create!(name:'ananas',kind: :vegetable, climate: '0-10°C', environment:'outdoor', maturation_length: 35, difficulty: 4)
avocat = coco.vegetable_processes.create!(name:'avocats',kind: :vegetable, climate: '0-10°C', environment:'outdoor', maturation_length: 35, difficulty: 4)

fenouil.events.create!(days_from_start: 1, action: "mettre les graines dans un germoir rempli d'eau", time_needed: 15)
fenouil.events.create!(days_from_start: 5, action: "sortir les graines du germoir et les planter dans un pot de terre", time_needed: 15)
fenouil.events.create!(days_from_start: 12, action: "retourner la terre pour l'aérer", time_needed: 5)
fenouil.events.create!(days_from_start: 18, action: "effectuer la récolte, gardez quelques graines pour les replanter ;)", time_needed: 15)
