class Purchase < ApplicationRecord
  has_one :raw_material

  validates :raw_material, :date, :cost, :quantity, presence: true

end
