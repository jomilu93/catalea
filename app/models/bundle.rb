class Bundle < ApplicationRecord
  has_many :products
  has_one :packaging

  validates :name, :price, :product, :packaging, presence: true

end
