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

ActiveRecord::Schema.define(version: 20141101210334) do

  create_table "bookings", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.integer  "user_id"
    t.integer  "slot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookings", ["slot_id"], name: "index_bookings_on_slot_id"
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id"

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone_number"
    t.string   "open_time"
    t.string   "close_time"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "fields", force: true do |t|
    t.integer  "client_id"
    t.string   "max_people"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "fields", ["client_id"], name: "index_fields_on_client_id"

  create_table "slots", force: true do |t|
    t.string   "start_time"
    t.string   "end_time"
    t.integer  "field_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "slots", ["field_id"], name: "index_slots_on_field_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
