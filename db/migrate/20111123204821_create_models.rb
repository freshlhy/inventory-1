class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.references :manufacturer
      t.references :category
      t.string :family
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :models, :manufacturer_id
  end
end
