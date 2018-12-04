class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :pseudo, :string
    add_column :users, :age, :string
    add_column :users, :title_job, :string
    add_column :users, :life_description, :text
    add_column :users, :city, :string
    add_column :users, :language1, :string
    add_column :users, :language2, :string
    add_column :users, :language3, :string

  end
end
