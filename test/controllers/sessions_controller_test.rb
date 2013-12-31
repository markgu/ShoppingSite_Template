require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session" do
    post :create, user: { userId: @user.userId, password: @user.password}
    assert_equal(session.has_key?(@user.userId), true )
    assert_redirected_to products_url
  end

  test "should destroy session" do
    delete :destroy, id: @user
    assert_equal(session.has_key?(@user.userId), false)
    assert_redirected_to products_url
  end


end
