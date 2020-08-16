class Production < ApplicationRecord
  has_one :product

  validates :date, :quantity, :product, presence: true
end
