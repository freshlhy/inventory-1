class CreateScans < ActiveRecord::Migration
  def change
    create_table :scans do |t|
      t.references :asset
      t.references :room
      t.text :note

      t.timestamps
    end
    add_index :scans, :asset_id
    add_index :scans, :room_id
  end
end
