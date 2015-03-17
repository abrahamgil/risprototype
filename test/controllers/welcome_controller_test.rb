require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get pricing" do
    get :pricing
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get account" do
    get :account
    assert_response :success
  end

end
