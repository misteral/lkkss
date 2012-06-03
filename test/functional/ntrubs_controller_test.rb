require 'test_helper'

class NtrubsControllerTest < ActionController::TestCase
  setup do
    @ntrub = ntrubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ntrubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ntrub" do
    assert_difference('Ntrub.count') do
      post :create, ntrub: @ntrub.attributes
    end

    assert_redirected_to ntrub_path(assigns(:ntrub))
  end

  test "should show ntrub" do
    get :show, id: @ntrub.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ntrub.to_param
    assert_response :success
  end

  test "should update ntrub" do
    put :update, id: @ntrub.to_param, ntrub: @ntrub.attributes
    assert_redirected_to ntrub_path(assigns(:ntrub))
  end

  test "should destroy ntrub" do
    assert_difference('Ntrub.count', -1) do
      delete :destroy, id: @ntrub.to_param
    end

    assert_redirected_to ntrubs_path
  end
end
