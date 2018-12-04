class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.string :event
      t.string :user

      t.timestamps
    end
    add_index :follows, :event
    add_index :follows, :user
  end
end
