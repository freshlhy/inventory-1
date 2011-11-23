class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.date :acquisition_date
      t.string :tag
      t.date :tagged
      t.string :serial
      t.references :model

      t.timestamps
    end
    add_index :items, :model_id
  end
end
