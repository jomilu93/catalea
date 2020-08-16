class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.references :user, null: false, foreign_key: true
      t.references :bundle, null: false, foreign_key: true
      t.references :shipping, null: false, foreign_key: true
      t.references :form_of_payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
