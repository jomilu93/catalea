class ProductIngredient < ApplicationRecord
  has_one :raw_material
  belongs_to :product

  validates :quantity, :product, :raw_material, presence: true
end
