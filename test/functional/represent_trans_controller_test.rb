require 'test_helper'

class RepresentTransControllerTest < ActionController::TestCase
  setup do
    @represent_tran = represent_trans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:represent_trans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create represent_tran" do
    assert_difference('RepresentTran.count') do
      post :create, represent_tran: @represent_tran.attributes
    end

    assert_redirected_to represent_tran_path(assigns(:represent_tran))
  end

  test "should show represent_tran" do
    get :show, id: @represent_tran.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @represent_tran.to_param
    assert_response :success
  end

  test "should update represent_tran" do
    put :update, id: @represent_tran.to_param, represent_tran: @represent_tran.attributes
    assert_redirected_to represent_tran_path(assigns(:represent_tran))
  end

  test "should destroy represent_tran" do
    assert_difference('RepresentTran.count', -1) do
      delete :destroy, id: @represent_tran.to_param
    end

    assert_redirected_to represent_trans_path
  end
end
