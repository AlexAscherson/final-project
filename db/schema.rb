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

ActiveRecord::Schema.define(version: 20150712155635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.text     "group_description"
    t.string   "imageurl"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.integer  "host_id"
    t.text     "event_description"
    t.string   "imageurl"
    t.text     "user_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "group_id"
    t.string   "location"
    t.integer  "outcome"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "tournament_id"
  end

  create_table "events_tournaments", force: :cascade do |t|
    t.integer  "tournament_id"
    t.integer  "event_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.text     "group_description"
    t.string   "imageurl"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "user_id"
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  add_index "groups_users", ["group_id", "user_id"], name: "index_groups_users_on_group_id_and_user_id", using: :btree

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.string   "imageurl"
    t.text     "user_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "group_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.text     "tournament_description"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "bio"
    t.text     "group_id"
    t.string   "profile_image_url"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
