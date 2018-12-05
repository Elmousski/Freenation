# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

6.times do |index|
	user = User.create!(email:"email#{index}@gmail.com", password:"gegegege#{index}", last_name: "Nom#{index}", first_name: "Prenom#{index}", pseudo: "Titi#{index}", age: "20#{index}", title_job: "dev#{index}", life_description: "jesuisun#{index}", city: "Paris#{index}", language1: "anglais#{index}", language2: "espagnol#{index}", language3: "russe#{index}")
end
    





   
    
  
  
    
