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

ActiveRecord::Schema.define(version: 20150428105107) do

  create_table "seven_event_events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "seven_gallery_galleries", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "seven_event_event_id"
  end

  add_index "seven_gallery_galleries", ["seven_event_event_id"], name: "index_seven_gallery_galleries_on_seven_event_event_id"

  create_table "seven_gallery_photos", force: :cascade do |t|
    t.string   "caption"
    t.string   "image"
    t.integer  "seven_gallery_gallery_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.boolean  "is_new",                   default: true
    t.boolean  "is_featured",              default: false
    t.text     "description"
    t.string   "alt"
    t.integer  "position",                 default: 0
    t.boolean  "is_main",                  default: false
  end

  add_index "seven_gallery_photos", ["seven_gallery_gallery_id"], name: "index_seven_gallery_photos_on_seven_gallery_gallery_id"

end
