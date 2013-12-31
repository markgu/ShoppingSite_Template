class ProductCategory < ActiveRecord::Base

  has_many :products

  # self join association
  has_many :subCategories, class_name: 'ProductCategory', foreign_key: 'superCategory_id'
  belongs_to :superCategory, class_name: 'ProductCategory'


end
