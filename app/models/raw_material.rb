class RawMaterial < ApplicationRecord

  validates :name, :unit, presence: true

end
