class RemoveAllindex < ActiveRecord::Migration[5.2]
  def change
  	remove_column :comments, :user, :string
    remove_column :comments, :event, :string


    remove_column :events, :user, :string

    remove_column :follows, :user, :string
    remove_column :follows, :event, :string


  end
end
