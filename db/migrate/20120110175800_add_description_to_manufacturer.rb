class AddDescriptionToManufacturer < ActiveRecord::Migration
  def change
    add_column :manufacturers, :description, :text
  end
end
