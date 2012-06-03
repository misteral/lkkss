require 'test_helper'

class ZavodsControllerTest < ActionController::TestCase
  setup do
    @zavod = zavods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zavods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zavod" do
    assert_difference('Zavod.count') do
      post :create, zavod: @zavod.attributes
    end

    assert_redirected_to zavod_path(assigns(:zavod))
  end

  test "should show zavod" do
    get :show, id: @zavod.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zavod.to_param
    assert_response :success
  end

  test "should update zavod" do
    put :update, id: @zavod.to_param, zavod: @zavod.attributes
    assert_redirected_to zavod_path(assigns(:zavod))
  end

  test "should destroy zavod" do
    assert_difference('Zavod.count', -1) do
      delete :destroy, id: @zavod.to_param
    end

    assert_redirected_to zavods_path
  end
end
