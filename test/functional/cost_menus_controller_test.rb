require 'test_helper'

class CostMenusControllerTest < ActionController::TestCase
  setup do
    @cost_menu = cost_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cost_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cost_menu" do
    assert_difference('CostMenu.count') do
      post :create, cost_menu: @cost_menu.attributes
    end

    assert_redirected_to cost_menu_path(assigns(:cost_menu))
  end

  test "should show cost_menu" do
    get :show, id: @cost_menu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cost_menu.to_param
    assert_response :success
  end

  test "should update cost_menu" do
    put :update, id: @cost_menu.to_param, cost_menu: @cost_menu.attributes
    assert_redirected_to cost_menu_path(assigns(:cost_menu))
  end

  test "should destroy cost_menu" do
    assert_difference('CostMenu.count', -1) do
      delete :destroy, id: @cost_menu.to_param
    end

    assert_redirected_to cost_menus_path
  end
end
