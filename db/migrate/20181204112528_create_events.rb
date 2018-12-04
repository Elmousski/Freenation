class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title_event
      t.string :city
      t.string :country
      t.text :description_event
      t.string :meeting_point
      t.datetime :starting_time
      t.datetime :starting_date
      t.datetime :ending_date
      t.integer :number_of_places
      t.string :gps_coordinates
      t.integer :price
      t.string :users

      t.timestamps
    end
    add_index :events, :users
  end
end
