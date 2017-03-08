# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


c1 = Client.new
c1.prenom = "Brieuc"
c1.nom = "Lambert"
c1.date_de_naissance = DateTime.strptime("06/01/1993", "%d/%m/%Y")
c1.profession = "freelance"
c1.adresse = "26 rue de l'Yvette, Paris, 75016"
c1.mail = "lambertbrieuc@gmail.com"
c1.portable = "0630528192"
c1.categorie = "personne physique"
c1.nationalite = "france"
c1.save


c2 = Client.new
c2.prenom = "Alizée"
c2.nom = "Wyart"
c2.date_de_naissance = DateTime.strptime("09/02/1993", "%d/%m/%Y")
c2.profession = "étudiante"
c2.adresse = "27 route des Turgères"
c2.mail = "alizee.wyart@gmail.com"
c2.portable = "0232325445"
c2.categorie = "personne physique"
c2.nationalite = "greece"
c2.save

c3 = Client.new
c3.prenom = "Jessica"
c3.nom = "Jones"
c3.date_de_naissance = DateTime.strptime("12/06/1987", "%d/%m/%Y")
c3.profession = "Ménagère"
c3.adresse = "Evreux (27)"
c3.mail = "jessica@bloomers.fr"
c3.portable = "0789027365"
c3.categorie = "association"
c3.nationalite = "italy"
c3.save
