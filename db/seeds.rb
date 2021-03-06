# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
	email: "alex@hotmail.fr",
	password: "123456",
	password_confirmation: "123456",
	last_name: "Moussier",
	first_name: "Alexandre",
	age: "32",
	title_job: "community manager freelance",
	life_description: "After being a digital consultant in an agency for three years, i have created my own company 5 years ago as a community manager freelance. Last year, i have been travelling a year in America Latina and i would love to share our first meeting with other digital nomads in Peru. I was there for three months past year, i speak spanish, and i will come back there for a wedding in January 2019. I am going to create our first meeting there, feel free to join.",
	city: "Montreuil",
	language1: "french",
	language2: "english",
	language3: "spanish",
)

Event.create!(title_event:"Création d'un évènement génial", #(string)
	city:'Libreville', #(string)
	country:'Gabon', #(string)
	description_event:"Je cherche des individus louches pour organiser mon réseau entre l'Afrique et la France. Si vous êtes corse, ça m'interesse ", #(content)
	meeting_point:'Paris', #(string)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'32', #(integer)
	price:'300', #(integer)
	user_id:'1') #(de l’orga uniquement)

Event.create!(title_event:"Création d'un réseau Corse-Afrique", #(string)
	city:'Libreville', #(string)
	country:'Gabon', #(string)
	description_event:"Je cherche des individus louches pour organiser mon réseau entre l'Afrique et la France. Si vous êtes corse, ça m'interesse ", #(content)
	meeting_point:'Paris', #(string)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'32', #(integer)
	price:'300', #(integer)
	user_id:'1') #(de l’orga uniquement)

Event.create!(title_event:"Soirée du nouvel an chez Kiki", #(string)
	city:'Libreville', #(string)
	country:'Gabon', #(string)
	description_event:"Je cherche des individus louches pour organiser mon réseau entre l'Afrique et la France. Si vous êtes corse, ça m'interesse ", #(content)
	meeting_point:'Paris', #(string)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'32', #(integer)
	price:'300', #(integer)
	user_id:'1') #(de l’orga uniquement)

Event.create!(title_event:"Déménagement", #(string)
	city:'Libreville', #(string)
	country:'Gabon', #(string)
	description_event:"Je cherche des individus louches pour organiser mon déménagement. Si vous êtes corse, ça m'interesse ", #(content)
	meeting_point:'Paris', #(string)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'32', #(integer)
	price:'300', #(integer)
	user_id:'1') #(de l’orga uniquement)

Event.create!(title_event: 'Gros surf de folie dans les calanques', city:'Marseille', country:'France', description_event:'Salut les freelenceurs! Je cherche des types sympas pour un petit surf des familles dans les calanques de Marseille. On transportera des boîtes de conserve de ma sauce tomate perso faite maison par ma maman', meeting_point:'Marseille', starting_date:'01/01/2019', ending_date:'01/10/2019', number_of_places:'20', price:'500', user_id:'1')

#===== EVENTS =======

Event.create!(title_event:'Convoyage de marchandise à peine suspecte', #(string)
	city:'Marseille', #(string)
	country:'France', #(string)
	description_event:'Salut les freelenceurs! Je cherche des types sympas pour un petit roadtrip de Marseille à Paris. On transportera des boîtes de conserve de ma sauce tomate perso faite maison par ma maman', #(content)
	meeting_point:'Marseille', #(string)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'6', #(interger)
	price:'500', #(integer)
	user_id:'1') #(de l’orga uniquement)

Event.create!(title_event:"Organisation de la soirée d'ouverture du Krypton", #(string)
	city:'Aix-en-Provence', #(string)
	country:'France', #(string)
	description_event:"Vous l'avez peut-être lu dans La Provence: j'ouvre mon nightclub! J'ai besoin de personnes motivées et qui ne comptent pas leurs heures pour assurer à la soirée d'ouverture. En guest : James Brown et Patrick Sebastien!!!", #(content)
	meeting_point:"Devant La Rotonde d'Aix-en-Provence", #(string)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'6', #(interger)
	price:'500', #(integer)
	user_id:'1') #(de l’orga uniquement)

Event.create!(title_event:"Vol d'un cajot de cerises", #(string)
	city:'Lyon', #(string)
	country:'France', #(string)
	description_event:"Je voudrais lancer ma carrière dans le grand banditisme pour me faire un peu d'expérience afin d'écrire un livre et pourquoi pas faire un petit film", #(content)
	meeting_point:'Lyon', #(string)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'6', #(interger)
	price:'500', #(integer)
	user_id:'1') #(de l’orga uniquement)

Event.create!(title_event:"Évasion de la Prison de la Santé", #(string)
	city:'Paris', #(string)
	country:'France', #(string)
	description_event:"Actuellement détenu à la prison de la Santé (seulement 1 étoile sur Tripadvisor...), je cherche une équipe motivée pour m'aider à partir en voyage. Je dispose déjà de quelques complices (avocat, gardiens...) mais toute aide sera la bienvenue ", #(content)
	meeting_point:'Paris', #(string)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'6', #(interger)
	price:'500', #(integer)
	user_id:'1') #(de l’orga uniquement))

Event.create!(title_event:"Meeting in Peru - Inca Valley", #(string) 
	city:'Lima', #(string) 
	country:'Peru', #(string)
	description_event:"Join a three weeks trip in Peru. We will spend two weeks in a coworking in Lima and then 1 week in cuzco to see the sacred valley and the Macchu Picchu.", #(content)
	meeting_point:'Av. Reducto 1518, Cercado de Lima 15074, Peru',
	address:'14 avenue dubonnet 92400 courbevoie',
	starting_date:'28/01/2019', #(datetime)
	ending_date:'18/02/2019', #(datetime)
	number_of_places:'10', #(integer)
	price:'990', #(integer)
	user_id:'1') #(de l’orga uniquement))

