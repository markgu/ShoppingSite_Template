require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
     @user = users(:one)
  end

  test "authenticate" do
    assert_equal(@user.authenticate(@user, @user.password) , true)

  end


end
