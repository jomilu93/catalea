class Order < ApplicationRecord
  belongs_to :user
  has_many :bundle
  has_one :shipping
  has_one :form_of_payment
end
