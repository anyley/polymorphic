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

ActiveRecord::Schema.define(version: 20160608234313) do

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages_widgets", force: :cascade do |t|
    t.integer  "page_id"
    t.integer  "widget_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "texts", force: :cascade do |t|
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "widget_attrs", force: :cascade do |t|
    t.integer  "widget_id"
    t.string   "name"
    t.string   "value"
    t.integer  "atype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["widget_id"], name: "index_widget_attrs_on_widget_id"
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.string   "element_type"
    t.integer  "element_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["element_type", "element_id"], name: "index_widgets_on_element_type_and_element_id"
  end

end
