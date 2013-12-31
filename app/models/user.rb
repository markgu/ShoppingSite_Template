class User < ActiveRecord::Base

  has_many :product_comments
  has_one :shopping_cart
  has_one :favorite
  has_many :coupons

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :userId,  presence: true,
                      length: { within: 6..15 }    ,
                      uniqueness: true
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :password, presence: true,
                       confirmation: true,
                       length: { within: 6..15 }
  validates :email, presence: true,
            format: {with: email_regex },
            uniqueness: {case_sensitive: false }


  def authenticate(user, password)
    if(user.password == password)
      true
    else false
    end
  end

  def to_s
    "userId => " + :userId
  end

end
