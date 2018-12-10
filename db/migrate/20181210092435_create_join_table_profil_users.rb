class CreateJoinTableProfilUsers < ActiveRecord::Migration[5.2]
  def change
  	 create_join_table :profils, :users do |t|
       t.index [:profil_id, :user_id]
       t.index [:user_id, :profil_id]
    end
  end
end
