require 'test_helper'

class TypePipesControllerTest < ActionController::TestCase
  setup do
    @type_pipe = type_pipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_pipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_pipe" do
    assert_difference('TypePipe.count') do
      post :create, type_pipe: @type_pipe.attributes
    end

    assert_redirected_to type_pipe_path(assigns(:type_pipe))
  end

  test "should show type_pipe" do
    get :show, id: @type_pipe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_pipe.to_param
    assert_response :success
  end

  test "should update type_pipe" do
    put :update, id: @type_pipe.to_param, type_pipe: @type_pipe.attributes
    assert_redirected_to type_pipe_path(assigns(:type_pipe))
  end

  test "should destroy type_pipe" do
    assert_difference('TypePipe.count', -1) do
      delete :destroy, id: @type_pipe.to_param
    end

    assert_redirected_to type_pipes_path
  end
end
