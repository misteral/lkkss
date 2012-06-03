require 'test_helper'

class InstrumentationsControllerTest < ActionController::TestCase
  setup do
    @instrumentation = instrumentations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instrumentations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instrumentation" do
    assert_difference('Instrumentation.count') do
      post :create, instrumentation: @instrumentation.attributes
    end

    assert_redirected_to instrumentation_path(assigns(:instrumentation))
  end

  test "should show instrumentation" do
    get :show, id: @instrumentation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instrumentation.to_param
    assert_response :success
  end

  test "should update instrumentation" do
    put :update, id: @instrumentation.to_param, instrumentation: @instrumentation.attributes
    assert_redirected_to instrumentation_path(assigns(:instrumentation))
  end

  test "should destroy instrumentation" do
    assert_difference('Instrumentation.count', -1) do
      delete :destroy, id: @instrumentation.to_param
    end

    assert_redirected_to instrumentations_path
  end
end
