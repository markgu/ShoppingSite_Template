class User < ActiveRecord::Base

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
            format: {with: email_regex },
            uniqueness: { case_sensitive: false }



=begin
    def initialize(options={})
      @userId = userId
      @firstName = firstName
      @lastName = lastName
      @password = password
=end

end
