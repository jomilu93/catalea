class PackagingComponent < ApplicationRecord
  belongs_to :packaging
  belongs_to :raw_material
end
