require 'test_helper'

class DataPipesControllerTest < ActionController::TestCase
  setup do
    @data_pipe = data_pipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_pipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_pipe" do
    assert_difference('DataPipe.count') do
      post :create, data_pipe: @data_pipe.attributes
    end

    assert_redirected_to data_pipe_path(assigns(:data_pipe))
  end

  test "should show data_pipe" do
    get :show, id: @data_pipe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_pipe.to_param
    assert_response :success
  end

  test "should update data_pipe" do
    put :update, id: @data_pipe.to_param, data_pipe: @data_pipe.attributes
    assert_redirected_to data_pipe_path(assigns(:data_pipe))
  end

  test "should destroy data_pipe" do
    assert_difference('DataPipe.count', -1) do
      delete :destroy, id: @data_pipe.to_param
    end

    assert_redirected_to data_pipes_path
  end
end
