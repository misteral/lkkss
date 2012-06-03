require 'test_helper'

class KonstrsControllerTest < ActionController::TestCase
  setup do
    @konstr = konstrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:konstrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create konstr" do
    assert_difference('Konstr.count') do
      post :create, konstr: @konstr.attributes
    end

    assert_redirected_to konstr_path(assigns(:konstr))
  end

  test "should show konstr" do
    get :show, id: @konstr.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @konstr.to_param
    assert_response :success
  end

  test "should update konstr" do
    put :update, id: @konstr.to_param, konstr: @konstr.attributes
    assert_redirected_to konstr_path(assigns(:konstr))
  end

  test "should destroy konstr" do
    assert_difference('Konstr.count', -1) do
      delete :destroy, id: @konstr.to_param
    end

    assert_redirected_to konstrs_path
  end
end
