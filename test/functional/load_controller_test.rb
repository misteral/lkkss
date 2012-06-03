require 'test_helper'

class LoadControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get rem" do
    get :rem
    assert_response :success
  end

end
