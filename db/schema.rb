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

ActiveRecord::Schema.define(version: 20140511210946) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurants_count", default: 0
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cities_count", default: 0
  end

  create_table "ratings", force: true do |t|
    t.integer  "value"
    t.integer  "restaurant_id"
    t.integer  "review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["restaurant_id"], name: "index_ratings_on_restaurant_id", using: :btree
  add_index "ratings", ["review_id"], name: "index_ratings_on_review_id", using: :btree

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.text     "cuisines"
    t.integer  "average_rating", default: 0
    t.integer  "cost"
    t.integer  "ratings_count",  default: 0
    t.integer  "reviews_count",  default: 0
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["city_id"], name: "index_restaurants_on_city_id", using: :btree

  create_table "reviews", force: true do |t|
    t.string   "reviewer"
    t.text     "review_text"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree

end
