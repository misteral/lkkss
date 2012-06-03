require 'test_helper'

class TipdefsControllerTest < ActionController::TestCase
  setup do
    @tipdef = tipdefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipdefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipdef" do
    assert_difference('Tipdef.count') do
      post :create, tipdef: @tipdef.attributes
    end

    assert_redirected_to tipdef_path(assigns(:tipdef))
  end

  test "should show tipdef" do
    get :show, id: @tipdef.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipdef.to_param
    assert_response :success
  end

  test "should update tipdef" do
    put :update, id: @tipdef.to_param, tipdef: @tipdef.attributes
    assert_redirected_to tipdef_path(assigns(:tipdef))
  end

  test "should destroy tipdef" do
    assert_difference('Tipdef.count', -1) do
      delete :destroy, id: @tipdef.to_param
    end

    assert_redirected_to tipdefs_path
  end
end
