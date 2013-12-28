class ShoppingCart < ActiveRecord::Base
  belongs_to :user
  has_many :products

  attr_accessor :amount

end
