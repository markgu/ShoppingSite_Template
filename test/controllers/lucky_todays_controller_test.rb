require 'test_helper'

class LuckyTodaysControllerTest < ActionController::TestCase
  setup do
    @lucky_today = lucky_todays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lucky_todays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lucky_today" do
    assert_difference('LuckyToday.count') do
      post :create, lucky_today: { applied_at: @lucky_today.applied_at, discountRate: @lucky_today.discountRate }
    end

    assert_redirected_to lucky_today_path(assigns(:lucky_today))
  end

  test "should show lucky_today" do
    get :show, id: @lucky_today
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lucky_today
    assert_response :success
  end

  test "should update lucky_today" do
    patch :update, id: @lucky_today, lucky_today: { applied_at: @lucky_today.applied_at, discountRate: @lucky_today.discountRate }
    assert_redirected_to lucky_today_path(assigns(:lucky_today))
  end

  test "should destroy lucky_today" do
    assert_difference('LuckyToday.count', -1) do
      delete :destroy, id: @lucky_today
    end

    assert_redirected_to lucky_todays_path
  end
end
