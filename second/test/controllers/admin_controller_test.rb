require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get helpdesk" do
    get :helpdesk
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

end
