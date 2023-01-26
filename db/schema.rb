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

ActiveRecord::Schema[7.0].define(version: 2023_01_26_131905) do
  create_table "draws", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "draw_date"
    t.integer "b1"
    t.integer "s1"
    t.integer "b2"
    t.integer "s2"
    t.integer "b3"
    t.integer "s3"
    t.integer "b4"
    t.integer "s4"
    t.integer "b5"
    t.integer "s5"
    t.integer "powerball"
    t.integer "powerscore"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "picks", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "draw_date"
    t.integer "b1"
    t.integer "s1"
    t.boolean "m1"
    t.integer "b2"
    t.integer "s2"
    t.boolean "m2"
    t.integer "b3"
    t.integer "s3"
    t.boolean "m3"
    t.integer "b4"
    t.integer "s4"
    t.boolean "m4"
    t.integer "b5"
    t.integer "s5"
    t.boolean "m5"
    t.integer "powerball"
    t.integer "powerscore"
    t.boolean "powermatch"
    t.decimal "won", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", charset: "utf8mb4", force: :cascade do |t|
    t.integer "ball"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :integer, charset: "latin1", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "congregation_id"
    t.integer "denomination_id"
    t.string "invitation_token"
    t.datetime "invitation_created_at", precision: nil
    t.datetime "invitation_sent_at", precision: nil
    t.datetime "invitation_accepted_at", precision: nil
    t.integer "invitation_limit"
    t.integer "invited_by_id"
    t.string "invited_by_type"
    t.string "congregation_role"
    t.integer "congregation_membership"
    t.integer "congregation_attendance"
    t.string "avatar"
    t.string "first_name"
    t.string "last_name"
    t.boolean "tutorial_passed", default: false
    t.string "congregation"
    t.string "denomination"
    t.string "location"
    t.boolean "send_newsletter", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wikis", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.text "body"
    t.integer "parent"
    t.string "version"
    t.string "integer"
    t.boolean "deleted"
    t.integer "default_sort"
    t.datetime "last_revision"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
