class AddArchivedToScans < ActiveRecord::Migration
  def change
    add_column :scans, :archived, :boolean
  end
end
