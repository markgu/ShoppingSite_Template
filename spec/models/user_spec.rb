require 'spec_helper'

describe User do
  it { should validate_presence_of(:userId) }
  it { should validate_presence_of(:firstName) }
  it { should validate_presence_of(:lastName) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:email) }
  it do
    User.create!(@attr)
    should validate_uniqueness_of(:email)
  end

  before(:each) do
    @attr = {
        userId: 'testid',
        firstName: 'test',
        lastName: 'test',
        password: 'testpassword',
        password_confirmation: 'testpassword' ,
        email: 'test@test.com'
    }
  end

  it 'should create a new User given a valid attribute' do
    User.create!(@attr)
  end

  it 'should require userId' do
    no_userId_user = User.new(@attr.merge(userId: ''))
    no_userId_user.should_not be_valid
  end

  it 'should reject userId that is too long' do
    long_userId_user = User.new(@attr.merge(userId: 'a1234567890123456789'))
    long_userId_user.should_not be_valid
  end

  it 'should require firstName and lastName' do
    no_name_user = User.new(@attr.merge(firstName: ''))
    no_name_user.should_not be_valid
    no_name_user = User.new(@attr.merge(lastName: ''))
    no_name_user.should_not be_valid
  end

  it 'should require password and password_confirmation' do
    no_password_user = User.new(@attr.merge(password: ''))
    no_password_user.should_not be_valid
    user = User.new(@attr.merge(password: '123456', password_confirmation: '456789'))
    user.should_not be_valid
  end

  it 'should require email' do
    user = User.new(@attr.merge(email: ''))
    user.should_not be_valid
    user = User.new(@attr.merge(email: 'test@test'))
    user.should_not be_valid
  end

  it 'should reject invalid email' do
    addresses = %w[test@test test_at_test test@test,com ]
    addresses.each do |address|
      user = User.new(@attr.merge(email: address))
      user.should_not be_valid
    end
  end


end