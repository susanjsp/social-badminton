# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_05_004321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "about"
    t.string "website"
    t.string "facebook"
    t.bigint "homebase_id"
    t.string "logo"
    t.index ["homebase_id"], name: "index_clubs_on_homebase_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "features"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.string "website"
  end

  create_table "occurrences", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "session_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_occurrences_on_session_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.bigint "location_id", null: false
    t.boolean "membership"
    t.boolean "beginners"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "member_price"
    t.integer "non_member_price"
    t.datetime "first_event"
    t.text "schedule"
    t.integer "duration_mins"
    t.index ["club_id"], name: "index_sessions_on_club_id"
    t.index ["location_id"], name: "index_sessions_on_location_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phone"
    t.string "name"
    t.bigint "club_id", null: false
    t.index ["club_id"], name: "index_users_on_club_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clubs", "locations", column: "homebase_id"
  add_foreign_key "occurrences", "sessions"
  add_foreign_key "sessions", "clubs"
  add_foreign_key "sessions", "locations"
  add_foreign_key "users", "clubs"
end
