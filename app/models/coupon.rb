class Coupon < ActiveRecord::Base
  belongs_to :user

  attr_accessor :amount, :expire, :givenBy
end
