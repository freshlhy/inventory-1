class AddSurplusToItems < ActiveRecord::Migration
  def change
    add_column :items, :surplus, :boolean
  end
end
