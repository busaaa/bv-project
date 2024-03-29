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

ActiveRecord::Schema.define(version: 2021_04_23_190143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.bigint "sport_id", null: false
    t.string "desc"
    t.string "comp_desc"
    t.integer "pos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_events_on_sport_id"
  end

  create_table "markets", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.string "desc"
    t.string "pt_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_markets_on_event_id"
  end

  create_table "outcomes", force: :cascade do |t|
    t.bigint "market_id", null: false
    t.string "d"
    t.string "fdp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_id"], name: "index_outcomes_on_market_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "desc"
    t.integer "pos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "sports"
  add_foreign_key "markets", "events"
  add_foreign_key "outcomes", "markets"
end
