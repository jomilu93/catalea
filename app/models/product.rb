class Product < ApplicationRecord
  has_many :product_ingredients
  has_many :raw_materials, through: :product_ingredients

  validates :name, :weight, :unit_cost, presence: true

end
