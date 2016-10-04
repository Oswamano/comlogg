# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160923033314) do

  create_table "equipment", force: true do |t|
    t.text     "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "error_reports", force: true do |t|
    t.text     "staff_actions"
    t.datetime "time_out"
    t.datetime "time_back"
    t.string   "equipment_type"
    t.integer  "user_id"
    t.boolean  "out_of_service"
    t.boolean  "needs_maintenance"
    t.boolean  "is_closed"
    t.integer  "equipment_id"
    t.datetime "cctv_off"
    t.datetime "cctv_on"
    t.string   "affected_equipment"
    t.string   "type_of_problem"
    t.string   "owning_agency"
    t.string   "outside_support"
    t.string   "reporting_agency"
    t.integer  "ticket_number"
    t.text     "operator_actions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "error_reports", ["equipment_id"], name: "index_error_reports_on_equipment_id"
  add_index "error_reports", ["user_id"], name: "index_error_reports_on_user_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "body"
    t.string   "hashtags"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end