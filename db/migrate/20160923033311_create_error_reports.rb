class CreateErrorReports < ActiveRecord::Migration
  def change
    create_table :error_reports do |t|
      t.text :staff_actions
      t.datetime :time_out
      t.datetime :time_back
      t.string :equipment_type
      t.references :user, index: true
      t.boolean :out_of_service
      t.boolean :needs_maintenance
      t.boolean :is_closed
      t.references :equipment, index: true
      t.datetime :cctv_off
      t.datetime :cctv_on
      t.string :affected_equipment
      t.string :type_of_problem
      t.string :owning_agency
      t.string :outside_support
      t.string :reporting_agency
      t.integer :ticket_number
      t.text :operator_actions

      t.timestamps
    end
  end
end
