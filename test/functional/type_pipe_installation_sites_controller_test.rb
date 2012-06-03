require 'test_helper'

class TypePipeInstallationSitesControllerTest < ActionController::TestCase
  setup do
    @type_pipe_installation_site = type_pipe_installation_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_pipe_installation_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_pipe_installation_site" do
    assert_difference('TypePipeInstallationSite.count') do
      post :create, type_pipe_installation_site: @type_pipe_installation_site.attributes
    end

    assert_redirected_to type_pipe_installation_site_path(assigns(:type_pipe_installation_site))
  end

  test "should show type_pipe_installation_site" do
    get :show, id: @type_pipe_installation_site.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_pipe_installation_site.to_param
    assert_response :success
  end

  test "should update type_pipe_installation_site" do
    put :update, id: @type_pipe_installation_site.to_param, type_pipe_installation_site: @type_pipe_installation_site.attributes
    assert_redirected_to type_pipe_installation_site_path(assigns(:type_pipe_installation_site))
  end

  test "should destroy type_pipe_installation_site" do
    assert_difference('TypePipeInstallationSite.count', -1) do
      delete :destroy, id: @type_pipe_installation_site.to_param
    end

    assert_redirected_to type_pipe_installation_sites_path
  end
end
