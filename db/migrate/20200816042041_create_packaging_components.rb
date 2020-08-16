class CreatePackagingComponents < ActiveRecord::Migration[6.0]
  def change
    create_table :packaging_components do |t|
      t.integer :quantity
      t.references :packaging, null: false, foreign_key: true
      t.references :raw_material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
