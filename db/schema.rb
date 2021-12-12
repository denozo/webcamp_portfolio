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

ActiveRecord::Schema.define(version: 2021_12_12_061800) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_results", force: :cascade do |t|
    t.string "tournament_name", null: false
    t.string "game_title", null: false
    t.string "image_id"
    t.datetime "event_date", null: false
    t.text "results_details", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graduates", force: :cascade do |t|
    t.integer "year", null: false
    t.string "image_id"
    t.text "member_list", null: false
    t.text "career_after_graduation", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guardians", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.string "relationship", null: false
    t.string "member_name", null: false
    t.integer "year_of_enrollment", null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "tel", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_guardians_on_email", unique: true
    t.index ["reset_password_token"], name: "index_guardians_on_reset_password_token", unique: true
  end

  create_table "information", force: :cascade do |t|
    t.integer "category", default: 0, null: false
    t.string "title", null: false
    t.text "content", null: false
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer "category_id"
    t.string "image_id"
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.integer "grade", default: 0, null: false
    t.string "position", null: false
    t.integer "height", null: false
    t.integer "weight", null: false
    t.text "original_team", null: false
    t.text "hobby", null: false
    t.text "goal", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
