class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.date :acquisition_date
      t.string :tag
      t.date :tag_date
      t.string :serial
      t.references :model

      t.timestamps
    end
    add_index :assets, :model_id
  end
end
