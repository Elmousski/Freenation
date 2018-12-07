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

ActiveRecord::Schema.define(version: 2018_12_06_153353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.datetime "date_comment"
    t.text "text_comments"
    t.string "event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user"
    t.index ["event"], name: "index_comments_on_event"
    t.index ["user"], name: "index_comments_on_user"
  end

  create_table "events", force: :cascade do |t|
    t.string "title_event"
    t.string "city"
    t.string "country"
    t.text "description_event"
    t.string "meeting_point"
    t.datetime "starting_time"
    t.datetime "starting_date"
    t.datetime "ending_date"
    t.integer "number_of_places"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user"
    t.float "latitude"
    t.float "longitude"
    t.index ["user"], name: "index_events_on_user"
  end

  create_table "follows", force: :cascade do |t|
    t.string "event"
    t.string "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event"], name: "index_follows_on_event"
    t.index ["user"], name: "index_follows_on_user"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name_language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profils", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.integer "age"
    t.string "title_job"
    t.text "life_description"
    t.string "city"
    t.string "language1"
    t.string "language2"
    t.string "language3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
