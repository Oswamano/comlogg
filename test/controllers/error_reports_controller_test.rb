require 'test_helper'

class ErrorReportsControllerTest < ActionController::TestCase
  setup do
    @error_report = error_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:error_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create error_report" do
    assert_difference('ErrorReport.count') do
      post :create, error_report: { affected_equipment: @error_report.affected_equipment, cctv_off: @error_report.cctv_off, cctv_on: @error_report.cctv_on, equipment_id: @error_report.equipment_id, equipment_type: @error_report.equipment_type, is_closed: @error_report.is_closed, needs_maintenance: @error_report.needs_maintenance, operator_actions: @error_report.operator_actions, out_of_service: @error_report.out_of_service, outside_support: @error_report.outside_support, owning_agency: @error_report.owning_agency, reporting_agency: @error_report.reporting_agency, staff_actions: @error_report.staff_actions, ticket_number: @error_report.ticket_number, time_back: @error_report.time_back, time_out: @error_report.time_out, type_of_problem: @error_report.type_of_problem, user_id: @error_report.user_id }
    end

    assert_redirected_to error_report_path(assigns(:error_report))
  end

  test "should show error_report" do
    get :show, id: @error_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @error_report
    assert_response :success
  end

  test "should update error_report" do
    patch :update, id: @error_report, error_report: { affected_equipment: @error_report.affected_equipment, cctv_off: @error_report.cctv_off, cctv_on: @error_report.cctv_on, equipment_id: @error_report.equipment_id, equipment_type: @error_report.equipment_type, is_closed: @error_report.is_closed, needs_maintenance: @error_report.needs_maintenance, operator_actions: @error_report.operator_actions, out_of_service: @error_report.out_of_service, outside_support: @error_report.outside_support, owning_agency: @error_report.owning_agency, reporting_agency: @error_report.reporting_agency, staff_actions: @error_report.staff_actions, ticket_number: @error_report.ticket_number, time_back: @error_report.time_back, time_out: @error_report.time_out, type_of_problem: @error_report.type_of_problem, user_id: @error_report.user_id }
    assert_redirected_to error_report_path(assigns(:error_report))
  end

  test "should destroy error_report" do
    assert_difference('ErrorReport.count', -1) do
      delete :destroy, id: @error_report
    end

    assert_redirected_to error_reports_path
  end
end
