class DropProfil < ActiveRecord::Migration[5.2]
  def up
    drop_table :profils
    drop_table :profils_users
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end


