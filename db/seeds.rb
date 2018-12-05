# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'Franciss@gmail.com',
	password: 'azerty',
	last_name: 'Vanverberghe', 
	first_name: 'Francis', 
	pseudo: 'Francis le Belge', 
	age: '72', 
	title_job: 'Parain', 
	life_description: "Je ne suis qu'un honnête commerçant", 
	city:'Marseille', 
	language1: 'Français', 
	language2: 'Belge', 
	language3:'None' )

User.create!(email: 'Gaetanoo@gmail.com',
	password: 'azerty',
	last_name: 'Zampa', 
	first_name: 'Gaetano', 
	pseudo: 'Tany', 
	age: '85', 
	title_job: 'Directeur artistique du Krypton', 
	life_description: "blablabla", 
	city:'Marseille', 
	language1: 'Français', 
	language2: 'Sicilien', 
	language3:'None' )

User.create!(email: 'Edmondd@gmail.com',
	password: 'azerty',
	last_name: 'Vidal', 
	first_name: 'Edmond', 
	pseudo: 'Momon', 
	age: '73', 
	title_job: 'Écrivain', 
	life_description: "blablabla", 
	city:'Lyon', 
	language1: 'Français', 
	language2: 'None', 
	language3:'None' )

User.create!(email: 'Jacquess@gmail.com',
	password: 'ytreza',
	last_name: 'Mesrine', 
	first_name: 'Jacques', 
	pseudo: "L'ennemi public numéro 1", 
	age: '72', 
	title_job: 'Amuseur Public', 
	life_description: "J'ai pour habitude de tirer d'abord et de discuter ensuite", 
	city:'Paris', 
	language1: 'Français', 
	language2: 'Espagnol', 
	language3:'Anglais' )

User.create!(email: 'Ilitchh@gmail.com',
	password: 'azerty',
	last_name: 'Ramirez Sanchez', 
	first_name: 'Ilitch', 
	pseudo: 'Carlos', 
	age: '69', 
	title_job: 'Révolutionnaire', 
	life_description: "J'ai beaucoup parcouru le monde, notamment les pays chauds. Aujourd'hui, je suis hébergé à l'ombre par l'administration française", 
	city:'Maison Centrale de Clairvaux', 
	language1: 'Espagnol', 
	language2: 'Russe', 
	language3:'Français' )

User.create!(email: 'Charless@gmail.com',
	password: 'azerty',
	last_name: 'Pasqua', 
	first_name: 'Charles', 
	pseudo: 'Prairie', 
	age: '91', 
	title_job: 'Directeur de société', 
	life_description: "J'aime l'argent", 
	city:'Neuilly-sur-Seine', 
	language1: 'Français', 
	language2: 'Corse', 
	language3:'Anglais' )

#===== EVENTS =======


Event.create!(title_event:'Convoyage de marchandise à peine suspecte', #(string)
	city:'Marseille', #(string)
	country:'France', #(string)
	description_event:'Salut les freelenceurs! Je cherche des types sympas pour un petit roadtrip de Marseille à Paris. On transportera des boîtes de conserve de ma sauce tomate perso faite maison par ma maman', #(content)
	meeting_point:'Marseille', #(string)
	starting_time:'12:00:00', #(datetime)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'6', #(interger)
	latitude:'39° 17′ N', #(float)
	longitude:'76° 36′ O', #(float)
	price:'500') #(integer)

Event.create!(title_event:"Organisation de la soirée d'ouverture du Krypton", #(string)
	city:'Aix-en-Provence', #(string)
	country:'France', #(string)
	description_event:"Vous l'avez peut-être lu dans La Provence: j'ouvre mon nightclub! J'ai besoin de personnes motivées et qui ne comptent pas leurs heures pour assurer à la soirée d'ouverture. En guest : James Brown et Patrick Sebastien!!!", #(content)
	meeting_point:"Devant La Rotonde d'Aix-en-Provence", #(string)
	starting_time:'12:00:00', #(datetime)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'6', #(interger)
	latitude:'39° 17′ N', #(float)
	longitude:'76° 36′ O', #(float)
	price:'500') #(integer)

Event.create!(title_event:"Vol d'un cajot de cerises", #(string)
	city:'Lyon', #(string)
	country:'France', #(string)
	description_event:"Je voudrais lancer ma carrière dans le grand banditisme pour me faire un peu d'expérience afin d'écrire un livre et pourquoi pas faire un petit film", #(content)
	meeting_point:'Lyon', #(string)
	starting_time:'12:00:00', #(datetime)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'6', #(interger)
	latitude:'39° 17′ N', #(float)
	longitude:'76° 36′ O', #(float)
	price:'500') #(integer)

Event.create!(title_event:"Évasion de la Prison de la Santé", #(string)
	city:'Paris', #(string)
	country:'France', #(string)
	description_event:"Actuellement détenu à la prison de la Santé (seulement 1 étoile sur Tripadvisor...), je cherche une équipe motivée pour m'aider à partir en voyage. Je dispose déjà de quelques complices (avocat, gardiens...) mais toute aide sera la bienvenue ", #(content)
	meeting_point:'Paris', #(string)
	starting_time:'12:00:00', #(datetime)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'6', #(interger)
	latitude:'39° 17′ N', #(float)
	longitude:'76° 36′ O', #(float)
	price:'500') #(integer)

Event.create!(title_event:"Prise d'otage des représentants des membres de l'OPEP", #(string) 
	city:'Vienne', #(string) 
	country:'Autriche', #(string)
	description_event:"Le prix du baril de pétrol ne cesse d'augmenter. Les gilets jaunes sont bien sympas mais bon, je crois qu'il est temps que nous prenions les choses en main.", #(content)
	meeting_point:'Vienne', #(string)
	starting_time:'12:00:00', #(datetime)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'6', #(integer)
	latitude:'39° 17′ N', #(float)
	longitude:'76° 36′ O', #(float)
	price:'500') #(integer)

Event.create!(title_event:"Création d'un réseau Corse-Afrique", #(string)
	city:'Libreville', #(string)
	country:'Gabon', #(string)
	description_event:"Je cherche des individus louches pour organiser mon réseau entre l'Afrique et la France. Si vous êtes corse, ça m'interesse ", #(content)
	meeting_point:'Paris', #(string)
	starting_time:'12:00:00', #(datetime)
	starting_date:'01/01/2019', #(datetime)
	ending_date:'01/02/2019', #(datetime)
	number_of_places:'6', #(integer)
	latitude:'39° 17′ N', #(float)
	longitude:'76° 36′ O', #(float) 
	price:'500') #(integer)
    


   
    
  
  
    
