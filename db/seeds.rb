# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c1 = Client.new
c1.nom = "Brieuc"
c1.age = 24
c1.profession = "freelance"
c1.adresse = "24, rue Petit Pois"
c1.mail = "lambertbrieuc@gmail.com"
c1.portable = "0630528192"
c1.categorie = "personne physique"
c1.nationalité = "FR"
c1.save


c2 = Client.new
c2.nom = "Alizée"
c2.age = 23
c2.profession = "étudiante"
c2.adresse = "27 route des Turgères"
c2.mail = "alizee.wyart@gmail.com"
c2.portable = "0232325445"
c2.categorie = "personne physique"
c2.nationalité = "EN"
c2.save

c3 = Client.new
c3.nom = "Jessica"
c3.age = 45
c3.profession = "Ménagère"
c3.adresse = "Evreux (27)"
c3.mail = "jessica@bloomers.fr"
c3.portable = "0789027365"
c3.categorie = "association"
c3.nationalité = "IT"
c3.save
