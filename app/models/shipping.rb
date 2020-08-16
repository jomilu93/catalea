class Shipping < ApplicationRecord

  validates :name, :supplier, :cost, presence: true

end
