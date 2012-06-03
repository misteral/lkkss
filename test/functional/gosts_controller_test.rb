require 'test_helper'

class GostsControllerTest < ActionController::TestCase
  setup do
    @gost = gosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gost" do
    assert_difference('Gost.count') do
      post :create, gost: @gost.attributes
    end

    assert_redirected_to gost_path(assigns(:gost))
  end

  test "should show gost" do
    get :show, id: @gost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gost.to_param
    assert_response :success
  end

  test "should update gost" do
    put :update, id: @gost.to_param, gost: @gost.attributes
    assert_redirected_to gost_path(assigns(:gost))
  end

  test "should destroy gost" do
    assert_difference('Gost.count', -1) do
      delete :destroy, id: @gost.to_param
    end

    assert_redirected_to gosts_path
  end
end
