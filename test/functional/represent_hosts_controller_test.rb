require 'test_helper'

class RepresentHostsControllerTest < ActionController::TestCase
  setup do
    @represent_host = represent_hosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:represent_hosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create represent_host" do
    assert_difference('RepresentHost.count') do
      post :create, represent_host: @represent_host.attributes
    end

    assert_redirected_to represent_host_path(assigns(:represent_host))
  end

  test "should show represent_host" do
    get :show, id: @represent_host.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @represent_host.to_param
    assert_response :success
  end

  test "should update represent_host" do
    put :update, id: @represent_host.to_param, represent_host: @represent_host.attributes
    assert_redirected_to represent_host_path(assigns(:represent_host))
  end

  test "should destroy represent_host" do
    assert_difference('RepresentHost.count', -1) do
      delete :destroy, id: @represent_host.to_param
    end

    assert_redirected_to represent_hosts_path
  end
end
