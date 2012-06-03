require 'test_helper'

class AktsControllerTest < ActionController::TestCase
  setup do
    @akt = akts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:akts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create akt" do
    assert_difference('Akt.count') do
      post :create, akt: @akt.attributes
    end

    assert_redirected_to akt_path(assigns(:akt))
  end

  test "should show akt" do
    get :show, id: @akt.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @akt.to_param
    assert_response :success
  end

  test "should update akt" do
    put :update, id: @akt.to_param, akt: @akt.attributes
    assert_redirected_to akt_path(assigns(:akt))
  end

  test "should destroy akt" do
    assert_difference('Akt.count', -1) do
      delete :destroy, id: @akt.to_param
    end

    assert_redirected_to akts_path
  end
end
