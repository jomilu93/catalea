class Bundle < ApplicationRecord
  has_many :products
  has_one :packaging
end
