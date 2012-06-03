require 'test_helper'

class DownloadControllerTest < ActionController::TestCase
  test "should get rem" do
    get :rem
    assert_response :success
  end

end
