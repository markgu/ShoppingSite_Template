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

ActiveRecord::Schema.define(version: 20140102042404) do

  create_table "billing_products", force: true do |t|
    t.string   "productName"
    t.integer  "quantity"
    t.integer  "price"
    t.integer  "sub_total"
    t.integer  "billing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "billings", force: true do |t|
    t.integer  "orderNo"
    t.integer  "amount"
    t.string   "address",    limit: 200
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coupons", force: true do |t|
    t.integer  "amount"
    t.date     "expire"
    t.string   "givenBy"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorites", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "frontpages", force: true do |t|
    t.string   "display_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issue_items", force: true do |t|
    t.text     "comment"
    t.date     "startDate"
    t.date     "finishDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lucky_todays", force: true do |t|
    t.date     "applied_at"
    t.integer  "discountRate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.string   "name"
    t.integer  "depth"
    t.integer  "product_categories_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_comments", force: true do |t|
    t.string   "text"
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_images", force: true do |t|
    t.integer  "width"
    t.integer  "height"
    t.integer  "size"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "company"
    t.decimal  "price",               precision: 10, scale: 2
    t.integer  "inStock"
    t.text     "info"
    t.integer  "product_category_id"
    t.integer  "seller_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "search_histories", force: true do |t|
    t.string   "keyword"
    t.integer  "ranking"
    t.integer  "change"
    t.boolean  "new"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellers", force: true do |t|
    t.string   "name"
    t.string   "tel"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_carts", force: true do |t|
    t.integer  "amount"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "userId"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "password"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_confirmation"
    t.string   "email"
  end

  add_index "users", ["userId"], name: "index_users_on_userId", unique: true

end
