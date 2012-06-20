require 'test_helper'

class XlsControllerTest < ActionController::TestCase
  setup do
    @xl = xls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xl" do
    assert_difference('Xl.count') do
      post :create, xl: @xl.attributes
    end

    assert_redirected_to xl_path(assigns(:xl))
  end

  test "should show xl" do
    get :show, id: @xl.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xl.to_param
    assert_response :success
  end

  test "should update xl" do
    put :update, id: @xl.to_param, xl: @xl.attributes
    assert_redirected_to xl_path(assigns(:xl))
  end

  test "should destroy xl" do
    assert_difference('Xl.count', -1) do
      delete :destroy, id: @xl.to_param
    end

    assert_redirected_to xls_path
  end
end
