class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :site
      t.string :name
      t.string :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index :rooms, :site_id
  end
end
