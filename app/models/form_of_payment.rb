class FormOfPayment < ApplicationRecord

  validates :name, :cost, presence: true

end
