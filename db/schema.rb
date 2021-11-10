# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_01_062251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "token"
    t.bigint "page_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["page_id"], name: "index_events_on_page_id"
  end

  create_table "globals", force: :cascade do |t|
    t.integer "event_id"
    t.string "tracker"
    t.string "tracker_name"
    t.string "os_version"
    t.string "os_name"
    t.string "network_name"
    t.string "connection_type"
    t.string "network_type"
    t.string "device_manufacturer"
    t.string "device_name"
    t.string "device_type"
    t.string "proxy_ip_address"
    t.string "ip_address"
    t.string "region"
    t.string "country"
    t.string "country_subdivision"
    t.string "city"
    t.string "language"
    t.string "app_id"
    t.string "app_name"
    t.string "app_version"
    t.string "platform"
    t.string "api_level"
    t.string "sdk_version"
    t.string "att_status"
    t.string "time_spent"
    t.string "session_count"
    t.string "lifetime_session_count"
    t.string "event"
    t.string "event_name"
    t.string "activity_kind"
    t.string "click_time"
    t.string "adjust_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "logins", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "ernnumber"
    t.string "adjust_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "signins", force: :cascade do |t|
    t.integer "user_id"
    t.string "eventtoken"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "ernnumber"
    t.string "adjust_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "testings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
    t.string "ern_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "events", "pages"
end
