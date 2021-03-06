class CreateProductIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :product_ingredients do |t|
      t.integer :quantity
      t.references :raw_material, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
