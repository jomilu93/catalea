class PackagingComponent < ApplicationRecord
  belongs_to :packaging
  has_one :raw_material
end
