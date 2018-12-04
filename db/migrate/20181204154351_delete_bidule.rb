class DeleteBidule < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :gps_coordinates, :string
    

  end
end
