class CreateRawMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :raw_materials do |t|
      t.string :name
      t.string :unit

      t.timestamps
    end
  end
end
