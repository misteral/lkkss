require 'test_helper'

class MenuReportsControllerTest < ActionController::TestCase
  setup do
    @menu_report = menu_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_report" do
    assert_difference('MenuReport.count') do
      post :create, menu_report: @menu_report.attributes
    end

    assert_redirected_to menu_report_path(assigns(:menu_report))
  end

  test "should show menu_report" do
    get :show, id: @menu_report.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_report.to_param
    assert_response :success
  end

  test "should update menu_report" do
    put :update, id: @menu_report.to_param, menu_report: @menu_report.attributes
    assert_redirected_to menu_report_path(assigns(:menu_report))
  end

  test "should destroy menu_report" do
    assert_difference('MenuReport.count', -1) do
      delete :destroy, id: @menu_report.to_param
    end

    assert_redirected_to menu_reports_path
  end
end
