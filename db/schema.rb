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

ActiveRecord::Schema.define(version: 20170420173819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "csvdatatables", force: :cascade do |t|
    t.string   "property_no"
    t.text     "property_url"
    t.text     "photo_url"
    t.text     "property_street"
    t.text     "property_city"
    t.text     "property_state"
    t.text     "page_views"
    t.string   "latitude"
    t.string   "longitude"
    t.text     "date_available"
    t.text     "general_features"
    t.text     "outdoor_features"
    t.text     "indoor_features"
    t.text     "beds"
    t.text     "baths"
    t.text     "car_space"
    t.text     "price"
    t.text     "bond"
    t.text     "property_type"
    t.text     "agent_name"
    t.text     "agency_name"
    t.text     "agent_address"
    t.text     "property_heading"
    t.text     "property_desc"
    t.text     "inpection_time"
    t.text     "floorplan"
    t.text     "crawl_date_time"
    t.string   "uploaded_file_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "photourls", force: :cascade do |t|
    t.string   "csv_id"
    t.text     "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "useremail"
    t.string   "userpwd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
