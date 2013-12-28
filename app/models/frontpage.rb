class Frontpage < ActiveRecord::Base

  has_many :products

  attr_accessor :display_at


end
