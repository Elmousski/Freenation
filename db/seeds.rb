# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Profil.create!(last_name: 'Vanverberghe', first_name: 'Francis', age: '72', title_job: 'Godfather', life_description: "I am just an honnest businessman",	image_user: 'http://static.libertyland.one/images/movies_red/mon-pere-francis-le-belge-8569.jpg?v=30', background_image_user: 'https://camdenhawthorn.com/wp-content/uploads/2018/03/DSC_0657-1580x550.jpg', city:'Marseille', language_1: 'French', 

end

