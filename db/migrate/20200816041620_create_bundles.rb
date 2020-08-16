class CreateBundles < ActiveRecord::Migration[6.0]
  def change
    create_table :bundles do |t|
      t.string :name
      t.float :price
      t.references :product, null: false, foreign_key: true
      t.references :packaging, null: false, foreign_key: true

      t.timestamps
    end
  end
end
