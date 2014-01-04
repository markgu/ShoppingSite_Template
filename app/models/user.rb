class User < ActiveRecord::Base

  has_many :product_comments
  has_one :shopping_cart
  has_one :favorite
  has_many :coupons

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :userId,  presence: true,
                      length: { within: 6..15 } ,
                      uniqueness: true
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :password, presence: true,
                       confirmation: true,
                       length: { within: 6..50 }
  validates :email, presence: true,
            format: {with: email_regex },
            uniqueness: {case_sensitive: false }
  validates :terms_of_service, acceptance: {accept: '1'}


  def self.authenticate(params)
    puts "IN authenticate params #{params[:userId]}"
    puts "IN authenticate params #{params[:password]}"
    user = User.find_by(userId: params[:userId])
    puts "IN authenticate #{user.to_s}"
    if user && user.password == encrypt_password(params[:password])
      user
    else
      nil
    end
  end

  def self.encrypt_password(password)
    Digest::MD5.hexdigest(password)
  end

end
