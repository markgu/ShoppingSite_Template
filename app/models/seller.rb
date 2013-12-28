class Seller < ActiveRecord::Base

  has_many :products

  attr_accessor :name, :tel, :address

end
