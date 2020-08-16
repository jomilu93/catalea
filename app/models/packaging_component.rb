class PackagingComponent < ApplicationRecord
  belongs_to :packaging
  has_one :raw_material

  validates :quantity, :packaging, :raw_material, presence: true

end
