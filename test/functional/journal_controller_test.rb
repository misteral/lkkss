require 'test_helper'

class JournalControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get link" do
    get :link
    assert_response :success
  end

end
