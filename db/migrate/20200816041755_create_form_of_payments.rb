class CreateFormOfPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :form_of_payments do |t|
      t.string :name
      t.float :cost

      t.timestamps
    end
  end
end
