class AddGeoToScans < ActiveRecord::Migration
  def change
    add_column :scans, :latitude, :float
    add_column :scans, :longitude, :float
  end
end
