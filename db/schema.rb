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

ActiveRecord::Schema.define(version: 2019_02_05_103347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "circuits", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "url"
    t.jsonb "google_map"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_circuits_on_code"
    t.index ["google_map"], name: "index_circuits_on_google_map", using: :gin
  end

  create_table "constructors", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "nationality", null: false
    t.string "url"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_constructors_on_code"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "code"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "nationality", null: false
    t.date "date_of_birth", null: false
    t.string "url"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_drivers_on_code"
  end

  create_table "slash_admin_admins", id: :serial, force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "password_digest", default: "", null: false
    t.string "avatar"
    t.string "roles"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
