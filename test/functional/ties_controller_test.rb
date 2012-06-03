require 'test_helper'

class TiesControllerTest < ActionController::TestCase
  setup do
    @ty = ties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ty" do
    assert_difference('Ty.count') do
      post :create, ty: @ty.attributes
    end

    assert_redirected_to ty_path(assigns(:ty))
  end

  test "should show ty" do
    get :show, id: @ty.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ty.to_param
    assert_response :success
  end

  test "should update ty" do
    put :update, id: @ty.to_param, ty: @ty.attributes
    assert_redirected_to ty_path(assigns(:ty))
  end

  test "should destroy ty" do
    assert_difference('Ty.count', -1) do
      delete :destroy, id: @ty.to_param
    end

    assert_redirected_to ties_path
  end
end
