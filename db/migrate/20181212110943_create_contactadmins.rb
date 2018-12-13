class CreateContactadmins < ActiveRecord::Migration[5.2]
  def change
    create_table :contactadmins do |t|

      t.timestamps
    end
  end
end
