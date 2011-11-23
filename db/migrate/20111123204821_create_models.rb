class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.references :manufacturer
      t.string :name
      t.string :identifier

      t.timestamps
    end
    add_index :models, :manufacturer_id
  end
end
