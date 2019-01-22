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

ActiveRecord::Schema.define(version: 20190122173239) do

  create_table "buy_backs", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "address"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "email"
    t.string "drive_license"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img"
    t.string "image"
    t.string "status"
    t.text "comments"
    t.string "tracking_number"
    t.date "received_date"
    t.date "paid_date"
    t.string "phone_number"
  end

  create_table "buy_backs_devices", force: :cascade do |t|
  end

  create_table "carriers", force: :cascade do |t|
    t.string "carrier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "device_models", force: :cascade do |t|
    t.string "device_model"
    t.string "device_sale_price"
    t.string "device_buy_back_price"
    t.string "device_repair_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.integer "quantity"
    t.string "carrier"
    t.string "imei"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "device_name"
    t.integer "buy_back_id"
    t.text "comments"
    t.string "deduction"
  end

end
