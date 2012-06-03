require 'test_helper'

class PassportPipesControllerTest < ActionController::TestCase
  setup do
    @passport_pipe = passport_pipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:passport_pipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create passport_pipe" do
    assert_difference('PassportPipe.count') do
      post :create, passport_pipe: @passport_pipe.attributes
    end

    assert_redirected_to passport_pipe_path(assigns(:passport_pipe))
  end

  test "should show passport_pipe" do
    get :show, id: @passport_pipe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @passport_pipe.to_param
    assert_response :success
  end

  test "should update passport_pipe" do
    put :update, id: @passport_pipe.to_param, passport_pipe: @passport_pipe.attributes
    assert_redirected_to passport_pipe_path(assigns(:passport_pipe))
  end

  test "should destroy passport_pipe" do
    assert_difference('PassportPipe.count', -1) do
      delete :destroy, id: @passport_pipe.to_param
    end

    assert_redirected_to passport_pipes_path
  end
end
