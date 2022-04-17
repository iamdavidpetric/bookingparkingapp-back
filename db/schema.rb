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

ActiveRecord::Schema[7.0].define(version: 2022_03_24_114057) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parkings", force: :cascade do |t|
    t.string "city"
    t.string "name"
    t.string "description"
    t.integer "regular_spots"
    t.integer "ev_spots"
    t.string "image_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "message"
    t.boolean "solved", default: false
    t.boolean "responsed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.boolean "order_a_card", default: false
    t.string "card_sn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
