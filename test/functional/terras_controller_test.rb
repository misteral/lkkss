require 'test_helper'

class TerrasControllerTest < ActionController::TestCase
  setup do
    @terra = terras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create terra" do
    assert_difference('Terra.count') do
      post :create, terra: @terra.attributes
    end

    assert_redirected_to terra_path(assigns(:terra))
  end

  test "should show terra" do
    get :show, id: @terra.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @terra.to_param
    assert_response :success
  end

  test "should update terra" do
    put :update, id: @terra.to_param, terra: @terra.attributes
    assert_redirected_to terra_path(assigns(:terra))
  end

  test "should destroy terra" do
    assert_difference('Terra.count', -1) do
      delete :destroy, id: @terra.to_param
    end

    assert_redirected_to terras_path
  end
end
