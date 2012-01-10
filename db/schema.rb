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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120110175800) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.date     "acquisition_date"
    t.string   "tag"
    t.date     "tagged"
    t.string   "serial"
    t.integer  "model_id"
    t.text     "description"
    t.string   "po"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["model_id"], :name => "index_items_on_model_id"
  add_index "items", ["tag"], :name => "index_items_on_tag", :unique => true

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "models", :force => true do |t|
    t.integer  "manufacturer_id"
    t.integer  "category_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["manufacturer_id"], :name => "index_models_on_manufacturer_id"

  create_table "rooms", :force => true do |t|
    t.integer  "site_id"
    t.string   "name"
    t.string   "description"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rooms", ["site_id"], :name => "index_rooms_on_site_id"

  create_table "scans", :force => true do |t|
    t.integer  "item_id"
    t.integer  "site_id"
    t.integer  "room_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "archived"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "scans", ["item_id"], :name => "index_scans_on_item_id"
  add_index "scans", ["room_id"], :name => "index_scans_on_room_id"

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
