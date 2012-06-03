require 'test_helper'

class LoadcertificsControllerTest < ActionController::TestCase
  setup do
    @loadcertific = loadcertifics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loadcertifics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loadcertific" do
    assert_difference('Loadcertific.count') do
      post :create, loadcertific: @loadcertific.attributes
    end

    assert_redirected_to loadcertific_path(assigns(:loadcertific))
  end

  test "should show loadcertific" do
    get :show, id: @loadcertific.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loadcertific.to_param
    assert_response :success
  end

  test "should update loadcertific" do
    put :update, id: @loadcertific.to_param, loadcertific: @loadcertific.attributes
    assert_redirected_to loadcertific_path(assigns(:loadcertific))
  end

  test "should destroy loadcertific" do
    assert_difference('Loadcertific.count', -1) do
      delete :destroy, id: @loadcertific.to_param
    end

    assert_redirected_to loadcertifics_path
  end
end
