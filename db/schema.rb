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

ActiveRecord::Schema[7.1].define(version: 2023_12_22_105032) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "camera_id", null: false
    t.bigint "user_id", null: false
    t.datetime "booking_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camera_id"], name: "index_bookings_on_camera_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "camera_images", force: :cascade do |t|
    t.string "image"
    t.bigint "camera_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camera_id"], name: "index_camera_images_on_camera_id"
  end

  create_table "cameras", force: :cascade do |t|
    t.string "name"
    t.decimal "daily_price"
    t.string "camera_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "weekly_price", precision: 10, scale: 2
    t.decimal "two_week_price", precision: 10, scale: 2
    t.decimal "three_week_price", precision: 10, scale: 2
    t.decimal "four_week_price", precision: 10, scale: 2
    t.text "description"
    t.boolean "booked"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "jti", null: false
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "cameras"
  add_foreign_key "bookings", "users"
  add_foreign_key "camera_images", "cameras"
end
