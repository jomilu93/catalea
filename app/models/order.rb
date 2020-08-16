class Order < ApplicationRecord
  belongs_to :user
  has_many :bundles
  has_one :shipping
  has_one :form_of_payment

  validates :date, :user, :shipping, :form_of_payment, presence: true
end
