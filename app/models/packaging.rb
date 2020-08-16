class Packaging < ApplicationRecord
  has_many :packaging_components
  has_many :raw_materials, through: :packaging_components

  validates :name, :cost, presence: true

end
