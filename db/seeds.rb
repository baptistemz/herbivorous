Seed.destroy_all
Star.destroy_all
VegetableProcess.destroy_all
Event.destroy_all
User.destroy_all

bapt = User.create!(username:'baptistemz' ,email: 'baptistem59@hotmail.com', password: '12345678', password_confirmation: '12345678', avatar: File.open(Rails.root.join("db/seeds/images/ppbmz.jpeg")))
coco = User.create!(username:'cocomz' ,email: 'cocomz@gmail.com', password: '12345678', password_confirmation: '12345678', avatar: File.open(Rails.root.join("db/seeds/images/ppcoco.jpg")))
jerem = User.create!(username:'jerem' ,email: 'jerem@prejent.com', password: '12345678', password_confirmation: '12345678')
benjam = User.create!(username:'benjam' ,email: 'benjam@prejent.com', password: '12345678', password_confirmation: '12345678')
micka = User.create!(username:'micka' ,email: 'micka@prejent.com', password: '12345678', password_confirmation: '12345678')

fenouil = bapt.vegetable_processes.create!(name:'fenouil',photo: File.open(Rails.root.join("db/seeds/images/fenouil.jpg")),kind: :seed, climate: '10-20°C', environment:'indoor', maturation_length: 18, difficulty: 3)
poireaux = coco.vegetable_processes.create!(name:'poireaux',photo: File.open(Rails.root.join("db/seeds/images/poireau.jpg")),kind: :vegetable, climate: '0-10°C', environment:'outdoor', maturation_length: 35, difficulty: 4)
salade = coco.vegetable_processes.create!(name:'salade',photo: File.open(Rails.root.join("db/seeds/images/laitue.jpg")),kind: :vegetable, climate: '0-10°C', environment:'outdoor', maturation_length: 35, difficulty: 4)
fraises = coco.vegetable_processes.create!(name:'fraises',photo: File.open(Rails.root.join("db/seeds/images/strawberries.jpg")),kind: :fruit, climate: '0-10°C', environment:'outdoor', maturation_length: 35, difficulty: 4)
ananas = coco.vegetable_processes.create!(name:'ananas',photo: File.open(Rails.root.join("db/seeds/images/pineapple.jpg")),kind: :fruit, climate: '0-10°C', environment:'outdoor', maturation_length: 35, difficulty: 4)
avocat = coco.vegetable_processes.create!(name:'avocats',photo: File.open(Rails.root.join("db/seeds/images/avocados.jpg")),kind: :fruit, climate: '0-10°C', environment:'outdoor', maturation_length: 35, difficulty: 4)
carrotes = bapt.vegetable_processes.create!(name:'carrotes',photo: File.open(Rails.root.join("db/seeds/images/carrot.jpg")),kind: :vegetable, climate: '0-10°C', environment:'outdoor', maturation_length: 30, difficulty: 3)

fenouil.events.create!(days_from_start: 1, action: "mettre les graines dans un germoir rempli d'eau", time_needed: 15)
fenouil.events.create!(days_from_start: 5, action: "sortir les graines du germoir et les planter dans un pot de terre", time_needed: 15)
fenouil.events.create!(days_from_start: 12, action: "retourner la terre pour l'aérer", time_needed: 5)
fenouil.events.create!(days_from_start: 18, action: "effectuer la récolte, gardez quelques graines pour les replanter ;)", time_needed: 15)

salade.events.create!(days_from_start: 1, action: "mettre les graines dans un germoir rempli d'eau", time_needed: 15)
salade.events.create!(days_from_start: 7, action: "sortir les graines du germoir et les planter dans un pot de terre", time_needed: 10)
salade.events.create!(days_from_start: 12, action: "retourner la terre pour l'aérer", time_needed: 5)
salade.events.create!(days_from_start: 18, action: "effectuer la récolte, gardez quelques graines pour les replanter ;)", time_needed: 15)
salade.events.create!(days_from_start: 23, action: "random event", time_needed: 3)
salade.events.create!(days_from_start: 31, action: "random event", time_needed: 10)
salade.events.create!(days_from_start: 35, action: "random event", time_needed: 8)

ananas.events.create!(days_from_start: 15, action: "random event", time_needed: 5)
ananas.events.create!(days_from_start: 26, action: "random event", time_needed: 15)

avocat.events.create!(days_from_start: 11, action: "random event ;)", time_needed: 20)

Star.create(vegetable_process_id: avocat.id, stared_by: bapt.id)
Star.create(vegetable_process_id: carrotes.id, stared_by: bapt.id)
Star.create(vegetable_process_id: salade.id, stared_by: bapt.id)
Star.create(vegetable_process_id: fraises.id, stared_by: bapt.id)
Star.create(vegetable_process_id: ananas.id, stared_by: bapt.id)
Star.create(vegetable_process_id: ananas.id, stared_by: coco.id)
Star.create(vegetable_process_id: avocat.id, stared_by: coco.id)
Star.create(vegetable_process_id: fraises.id, stared_by: coco.id)
Star.create(vegetable_process_id: fraises.id, stared_by: jerem.id)
Star.create(vegetable_process_id: poireaux.id, stared_by: jerem.id)
Star.create(vegetable_process_id: avocat.id, stared_by: jerem.id)
Star.create(vegetable_process_id: avocat.id, stared_by: micka.id)
Star.create(vegetable_process_id: avocat.id, stared_by: benjam.id)
Star.create(vegetable_process_id: fraises.id, stared_by: benjam.id)
Star.create(vegetable_process_id: fenouil.id, stared_by: benjam.id)
Star.create(vegetable_process_id: ananas.id, stared_by: benjam.id)

Seed.create(vegetable_process_id: avocat.id, name: avocat.name, user_id: bapt.id, planting_date: Date.today, term_date: Date.today + avocat.maturation_length)
Seed.create(vegetable_process_id: fraises.id, name: fraises.name, user_id: bapt.id, planting_date: Date.today, term_date: Date.today + fraises.maturation_length)
Seed.create(vegetable_process_id: ananas.id, name: ananas.name, user_id: bapt.id, planting_date: Date.today, term_date: Date.today + ananas.maturation_length)
Seed.create(vegetable_process_id: ananas.id, name: ananas.name, user_id: coco.id, planting_date: Date.today, term_date: Date.today + ananas.maturation_length)
Seed.create(vegetable_process_id: fraises.id, name: fraises.name, user_id: coco.id, planting_date: Date.today, term_date: Date.today + fraises.maturation_length)
Seed.create(vegetable_process_id: fraises.id, name: fraises.name, user_id: jerem.id, planting_date: Date.today, term_date: Date.today + fraises.maturation_length)
Seed.create(vegetable_process_id: poireaux.id, name: poireaux.name, user_id: jerem.id, planting_date: Date.today, term_date: Date.today + poireaux.maturation_length)
Seed.create(vegetable_process_id: avocat.id, name: avocat.name, user_id: micka.id, planting_date: Date.today, term_date: Date.today + avocat.maturation_length)
Seed.create(vegetable_process_id: ananas.id, name: ananas.name, user_id: benjam.id, planting_date: Date.today, term_date: Date.today + ananas.maturation_length)
