class AddBiduleToMuch < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :user, :string
    add_index :comments, :user
    add_column :events, :user, :string
    add_index :events, :user
  end
end
