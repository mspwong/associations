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

ActiveRecord::Schema.define(version: 20141226052635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boyfriends", force: true do |t|
    t.string "name"
  end

  create_table "girlfriends", force: true do |t|
    t.string "name"
  end

  create_table "husbands", force: true do |t|
    t.string "name"
  end

  create_table "kings", primary_key: "k_id", force: true do |t|
    t.string "country"
  end

  create_table "missing_donations", primary_key: "mor_id", force: true do |t|
    t.string "name"
  end

  create_table "queens", primary_key: "q_id", force: true do |t|
    t.string "country"
  end

  create_table "shop_events", force: true do |t|
    t.string "name"
  end

  create_table "wives", force: true do |t|
    t.string "name"
  end

  create_table "xref_girlfriend_boyfriends", force: true do |t|
    t.integer "galfriend_id"
    t.integer "guyfriend_id"
  end

  create_table "xref_missing_donation_shop_events", force: true do |t|
    t.integer "missing_donation_id", null: false
    t.integer "shop_event_id",       null: false
  end

  add_index "xref_missing_donation_shop_events", ["missing_donation_id"], name: "index_xref_missing_donation_shop_events_on_missing_donation_id", using: :btree
  add_index "xref_missing_donation_shop_events", ["shop_event_id"], name: "index_xref_missing_donation_shop_events_on_shop_event_id", using: :btree

  create_table "xref_queen_kings", force: true do |t|
    t.integer "q_id"
    t.integer "k_id"
  end

  create_table "xref_wife_husbands", force: true do |t|
    t.integer "wife_id"
    t.integer "husband_id"
  end

end
