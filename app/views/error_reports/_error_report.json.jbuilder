json.extract! error_report, :id, :staff_actions, :time_out, :time_back, :equipment_type, :user_id, :out_of_service, :needs_maintenance, :is_closed, :equipment_id, :cctv_off, :cctv_on, :affected_equipment, :type_of_problem, :owning_agency, :outside_support, :reporting_agency, :ticket_number, :operator_actions, :created_at, :updated_at
json.url error_report_url(error_report, format: :json)