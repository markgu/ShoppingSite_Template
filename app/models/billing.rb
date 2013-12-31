class Billing < ActiveRecord::Base

  has_many :billing_products
  belongs_to :user

end
