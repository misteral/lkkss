require 'test_helper'

class CostInputsControllerTest < ActionController::TestCase
  setup do
    @cost_input = cost_inputs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cost_inputs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cost_input" do
    assert_difference('CostInput.count') do
      post :create, cost_input: @cost_input.attributes
    end

    assert_redirected_to cost_input_path(assigns(:cost_input))
  end

  test "should show cost_input" do
    get :show, id: @cost_input.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cost_input.to_param
    assert_response :success
  end

  test "should update cost_input" do
    put :update, id: @cost_input.to_param, cost_input: @cost_input.attributes
    assert_redirected_to cost_input_path(assigns(:cost_input))
  end

  test "should destroy cost_input" do
    assert_difference('CostInput.count', -1) do
      delete :destroy, id: @cost_input.to_param
    end

    assert_redirected_to cost_inputs_path
  end
end
