require 'test_helper'

class SizesPipesControllerTest < ActionController::TestCase
  setup do
    @sizes_pipe = sizes_pipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sizes_pipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sizes_pipe" do
    assert_difference('SizesPipe.count') do
      post :create, sizes_pipe: @sizes_pipe.attributes
    end

    assert_redirected_to sizes_pipe_path(assigns(:sizes_pipe))
  end

  test "should show sizes_pipe" do
    get :show, id: @sizes_pipe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sizes_pipe.to_param
    assert_response :success
  end

  test "should update sizes_pipe" do
    put :update, id: @sizes_pipe.to_param, sizes_pipe: @sizes_pipe.attributes
    assert_redirected_to sizes_pipe_path(assigns(:sizes_pipe))
  end

  test "should destroy sizes_pipe" do
    assert_difference('SizesPipe.count', -1) do
      delete :destroy, id: @sizes_pipe.to_param
    end

    assert_redirected_to sizes_pipes_path
  end
end
