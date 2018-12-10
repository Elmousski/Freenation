class AddIdToProfil < ActiveRecord::Migration[5.2]
  def change
  		add_reference :profils, :user, foreign_key: true
  end
end
