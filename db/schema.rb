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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130706200923) do

  create_table "doctor_insurances", :force => true do |t|
    t.integer  "insurance_license_id"
    t.integer  "doctor_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "doctor_insurances", ["insurance_license_id", "doctor_id"], :name => "index_doctor_insurances_on_insurance_license_id_and_doctor_id"

  create_table "doctor_states", :force => true do |t|
    t.integer  "state_license_id"
    t.integer  "doctor_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "doctor_states", ["state_license_id", "doctor_id"], :name => "index_doctor_states_on_state_license_id_and_doctor_id"

  create_table "doctors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "state_license_id"
    t.integer  "insurance_license_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "doctors", ["state_license_id", "insurance_license_id"], :name => "index_doctors_on_state_license_id_and_insurance_license_id"

  create_table "insurance_licenses", :force => true do |t|
    t.string "insurance_name"
  end

  create_table "state_licenses", :force => true do |t|
    t.string "state_name"
  end

end
