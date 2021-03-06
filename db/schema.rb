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

ActiveRecord::Schema.define(version: 20150307064350) do

  create_table "travel_requests", force: :cascade do |t|
    t.string   "travel_type"
    t.date     "trip_end_date"
    t.datetime "trip_depart"
    t.datetime "trip_return"
    t.string   "onward_mode"
    t.string   "onward_flight_class"
    t.string   "onward_train_class"
    t.string   "onward_book_by"
    t.string   "return_mode"
    t.string   "return_flight_class"
    t.string   "return_train_class"
    t.string   "return_book_by"
    t.string   "supervisor"
    t.string   "employee_cell"
    t.string   "alternate_approver"
    t.string   "alternate_approver_email"
    t.text     "reason_for_travel"
    t.string   "purpose_of_travel"
    t.boolean  "accommodation_required"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "from_city"
    t.string   "to_city"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "roles"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "supervisor"
    t.string   "phone"
  end

end
