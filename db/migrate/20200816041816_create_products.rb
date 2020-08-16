class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :weight
      t.float :unit_cost

      t.timestamps
    end
  end
end
