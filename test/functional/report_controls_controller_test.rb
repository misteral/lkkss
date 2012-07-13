require 'test_helper'

class ReportControlsControllerTest < ActionController::TestCase
  setup do
    @report_control = report_controls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_controls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_control" do
    assert_difference('ReportControl.count') do
      post :create, report_control: @report_control.attributes
    end

    assert_redirected_to report_control_path(assigns(:report_control))
  end

  test "should show report_control" do
    get :show, id: @report_control.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report_control.to_param
    assert_response :success
  end

  test "should update report_control" do
    put :update, id: @report_control.to_param, report_control: @report_control.attributes
    assert_redirected_to report_control_path(assigns(:report_control))
  end

  test "should destroy report_control" do
    assert_difference('ReportControl.count', -1) do
      delete :destroy, id: @report_control.to_param
    end

    assert_redirected_to report_controls_path
  end
end
