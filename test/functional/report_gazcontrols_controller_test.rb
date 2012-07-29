require 'test_helper'

class ReportGazcontrolsControllerTest < ActionController::TestCase
  setup do
    @report_gazcontrol = report_gazcontrols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_gazcontrols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_gazcontrol" do
    assert_difference('ReportGazcontrol.count') do
      post :create, report_gazcontrol: { date_start: @report_gazcontrol.date_start }
    end

    assert_redirected_to report_gazcontrol_path(assigns(:report_gazcontrol))
  end

  test "should show report_gazcontrol" do
    get :show, id: @report_gazcontrol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report_gazcontrol
    assert_response :success
  end

  test "should update report_gazcontrol" do
    put :update, id: @report_gazcontrol, report_gazcontrol: { date_start: @report_gazcontrol.date_start }
    assert_redirected_to report_gazcontrol_path(assigns(:report_gazcontrol))
  end

  test "should destroy report_gazcontrol" do
    assert_difference('ReportGazcontrol.count', -1) do
      delete :destroy, id: @report_gazcontrol
    end

    assert_redirected_to report_gazcontrols_path
  end
end
