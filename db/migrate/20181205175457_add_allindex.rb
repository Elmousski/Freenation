class AddAllindex < ActiveRecord::Migration[5.2]
  def change
	add_reference :comments, :user, foreign_key: true
	add_reference :comments, :event, foreign_key: true

	add_reference :events, :user, foreign_key: true
  end
end
