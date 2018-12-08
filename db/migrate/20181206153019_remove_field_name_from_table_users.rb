class RemoveFieldNameFromTableUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :last_name, :string
    remove_column :users, :first_name, :string
    remove_column :users, :pseudo, :string
    remove_column :users, :age, :string
    remove_column :users, :title_job, :string
    remove_column :users, :life_description, :text
    remove_column :users, :city, :string
    remove_column :users, :language1, :string
    remove_column :users, :language2, :string
    remove_column :users, :language3, :string
  end
end
