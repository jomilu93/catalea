class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bundle
  belongs_to :shipping
  belongs_to :form_of_payment
end
