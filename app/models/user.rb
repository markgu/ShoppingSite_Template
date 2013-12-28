class User < ActiveRecord::Base

  has_many :product_comments
  has_one :shopping_cart
  has_one :favorite
  has_many :coupons


  attr_accessor :userId, :firstName, :lastName, :password, :password_confirmation, :email,
                :street, :city, :state, :postcode
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :userId,  presence: true,
                      length: { within: 6..15 }
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :password, presence: true,
                       confirmation: true,
                       length: { within: 6..15 }
  validates :email, presence: true,
            uniqueness: true,
            format: {with: email_regex }




end
