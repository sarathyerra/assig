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

ActiveRecord::Schema.define(version: 20150820004320) do

  create_table "appointments", force: true do |t|
    t.string   "date_of_visit"
    t.string   "customer"
    t.string   "requires_reminder"
    t.string   "reason_of_visit"
    t.integer  "doctor_id"
    t.integer  "record_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"
  add_index "appointments", ["record_id"], name: "index_appointments_on_record_id"

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "degree_from"
    t.string   "Years_in_practice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nextappointments", force: true do |t|
    t.string   "date_of_next_appointment"
    t.string   "reason_for_visit"
    t.integer  "appointment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nextappointments", ["appointment_id"], name: "index_nextappointments_on_appointment_id"

  create_table "records", force: true do |t|
    t.string   "name_of_pet"
    t.string   "type_of_pet"
    t.string   "breed"
    t.string   "age"
    t.string   "weight"
    t.string   "date_of_last_visit"
    t.integer  "appointment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "records", ["appointment_id"], name: "index_records_on_appointment_id"

end
