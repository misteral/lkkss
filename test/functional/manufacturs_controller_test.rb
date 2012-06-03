require 'test_helper'

class ManufactursControllerTest < ActionController::TestCase
  setup do
    @manufactur = manufacturs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manufacturs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manufactur" do
    assert_difference('Manufactur.count') do
      post :create, manufactur: @manufactur.attributes
    end

    assert_redirected_to manufactur_path(assigns(:manufactur))
  end

  test "should show manufactur" do
    get :show, id: @manufactur.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manufactur.to_param
    assert_response :success
  end

  test "should update manufactur" do
    put :update, id: @manufactur.to_param, manufactur: @manufactur.attributes
    assert_redirected_to manufactur_path(assigns(:manufactur))
  end

  test "should destroy manufactur" do
    assert_difference('Manufactur.count', -1) do
      delete :destroy, id: @manufactur.to_param
    end

    assert_redirected_to manufacturs_path
  end
end
