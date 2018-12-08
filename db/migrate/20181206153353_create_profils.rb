class CreateProfils < ActiveRecord::Migration[5.2]
  def change
    create_table :profils do |t|
    t.string :last_name
    t.string :first_name
    t.integer :age
    t.string :title_job
    t.text :life_description
    t.string :city
    t.string :language1
    t.string :language2
    t.string :language3    	   
    t.timestamps
    end
  end
end
