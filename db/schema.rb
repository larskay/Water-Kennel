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

ActiveRecord::Schema.define(version: 20130816123235) do

  create_table "dogs", force: true do |t|
    t.string   "nickname"
    t.string   "name"
    t.string   "regnr"
    t.string   "allergies"
    t.datetime "born"
    t.boolean  "IDtagged"
    t.string   "race"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
  end

  create_table "owners", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "tlf"
    t.integer  "mobile"
    t.integer  "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treatments", force: true do |t|
    t.boolean  "full_treatment"
    t.boolean  "bath"
    t.boolean  "hair_dry"
    t.boolean  "ears"
    t.boolean  "teeth"
    t.boolean  "claws"
    t.boolean  "shaving"
    t.boolean  "napping"
    t.boolean  "brush"
    t.boolean  "form_cut"
    t.boolean  "walk"
    t.integer  "minutes"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
  end

end
