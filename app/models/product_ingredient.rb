class ProductIngredient < ApplicationRecord
  belongs_to :raw_material
  belongs_to :product
end
