class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :users, :string


    remove_column :events, :users, :string
  end
end
