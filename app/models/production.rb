class Production < ApplicationRecord
  has_many :product

  validates :date, :quantity, presence: true
end
