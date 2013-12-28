class LuckyToday < ActiveRecord::Base

  has_many :products

  attr_accessor :applied_at, :discount_rate

end
