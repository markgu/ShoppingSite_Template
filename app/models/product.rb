class Product < ActiveRecord::Base
  has_many :product_images
  belongs_to :product_category
  belongs_to :seller


end
