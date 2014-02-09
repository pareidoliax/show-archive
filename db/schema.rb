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

ActiveRecord::Schema.define(version: 20140209004537) do

  create_table "artists", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attends", force: true do |t|
    t.integer  "artist_id"
    t.integer  "event_id"
    t.integer  "user_id"
    t.integer  "venue_id"
    t.integer  "rating"
    t.text     "review"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attends", ["artist_id"], name: "index_attends_on_artist_id"
  add_index "attends", ["event_id"], name: "index_attends_on_event_id"
  add_index "attends", ["user_id"], name: "index_attends_on_user_id"
  add_index "attends", ["venue_id"], name: "index_attends_on_venue_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "date"
    t.integer  "artist_id"
    t.integer  "venue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["artist_id"], name: "index_events_on_artist_id"
  add_index "events", ["venue_id"], name: "index_events_on_venue_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "address"
    t.string   "name"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
