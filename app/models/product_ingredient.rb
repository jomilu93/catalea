class ProductIngredient < ApplicationRecord
  has_one :raw_material
  belongs_to :product
end
