class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.datetime :date_comment
      t.text :text_comments
      t.string :users
      t.string :event

      t.timestamps
    end
    add_index :comments, :users
    add_index :comments, :event
  end
end
