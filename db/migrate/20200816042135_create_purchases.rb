class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.datetime :date
      t.float :cost
      t.string :invoice
      t.float :quantity
      t.references :raw_material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
