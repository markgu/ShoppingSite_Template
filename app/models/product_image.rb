class ProductImage < ActiveRecord::Base

  belongs_to :product

  attr_accessor :width, :height, :size
end
