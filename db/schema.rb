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

ActiveRecord::Schema.define(version: 20141125180052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fed_banks", force: true do |t|
    t.string   "rt_number"
    t.string   "office_code"
    t.string   "frb_number"
    t.string   "record_type"
    t.string   "change_date"
    t.string   "new_routing"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "zipcode_ext"
    t.string   "tel_Area"
    t.string   "tel_prefix_num"
    t.string   "tel_suffix_num"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street1"
    t.string   "street2"
  end

  add_index "fed_banks", ["rt_number"], name: "index_fed_banks_on_rt_number", using: :btree

end
