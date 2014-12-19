require 'test_helper'

class FrontsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get features" do
    get :features
    assert_response :success
  end

  test "should get getstarted" do
    get :getstarted
    assert_response :success
  end

end
