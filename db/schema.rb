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

ActiveRecord::Schema.define(version: 2019_03_02_164135) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.date "contact_date"
    t.string "staff"
    t.string "title"
    t.string "status"
    t.string "category"
    t.string "summary"
    t.string "plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responds", force: :cascade do |t|
    t.integer "contact_id"
    t.date "respond_date"
    t.string "staff"
    t.string "title"
    t.string "point"
    t.string "deal"
    t.string "wording"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
