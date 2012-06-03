require 'test_helper'

class InstallationSitesControllerTest < ActionController::TestCase
  setup do
    @installation_site = installation_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:installation_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create installation_site" do
    assert_difference('InstallationSite.count') do
      post :create, installation_site: @installation_site.attributes
    end

    assert_redirected_to installation_site_path(assigns(:installation_site))
  end

  test "should show installation_site" do
    get :show, id: @installation_site.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @installation_site.to_param
    assert_response :success
  end

  test "should update installation_site" do
    put :update, id: @installation_site.to_param, installation_site: @installation_site.attributes
    assert_redirected_to installation_site_path(assigns(:installation_site))
  end

  test "should destroy installation_site" do
    assert_difference('InstallationSite.count', -1) do
      delete :destroy, id: @installation_site.to_param
    end

    assert_redirected_to installation_sites_path
  end
end
