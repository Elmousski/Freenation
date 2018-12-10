class AddTrucToProfil < ActiveRecord::Migration[5.2]
  def change
  	add_column :profils, :user, :string
    add_index :profils, :user
  end
end
