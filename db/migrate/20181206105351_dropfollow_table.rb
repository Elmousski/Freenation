class DropfollowTable < ActiveRecord::Migration[5.2]

  def up
    drop_table :follows
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
