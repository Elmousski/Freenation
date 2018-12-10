class Profil < ApplicationRecord
	permit_params :last_name, :first_name, :age, :title_job, :life_description, :city, :language1, :language2, :language3
	has_one :user
end
