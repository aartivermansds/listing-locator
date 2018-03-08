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

ActiveRecord::Schema.define(version: 20180308122948) do

  create_table "amenities", force: :cascade do |t|
    t.string "name"
    t.string "icon_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "imageable_type"
    t.string "imageable_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listing_amenities", force: :cascade do |t|
    t.integer "listing_id"
    t.integer "amenity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "index_listing_amenities_on_amenity_id"
    t.index ["listing_id"], name: "index_listing_amenities_on_listing_id"
  end

  create_table "listing_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "banner_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "banner_image"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zipcode"
    t.float "latitude"
    t.float "longitude"
    t.string "contact"
    t.string "email"
    t.string "website"
    t.string "address"
    t.string "fb_url"
    t.string "linkedin_url"
    t.string "gplus_url"
    t.string "twitter_url"
    t.integer "listing_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_category_id"], name: "index_listings_on_listing_category_id"
  end

  create_table "place_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "banner_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "banner_image"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zipcode"
    t.float "latitude"
    t.float "longitude"
    t.integer "place_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_category_id"], name: "index_places_on_place_category_id"
  end

  create_table "working_hours", force: :cascade do |t|
    t.string "day"
    t.string "from"
    t.string "to"
    t.integer "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_working_hours_on_listing_id"
  end

end
