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

ActiveRecord::Schema.define(version: 20170706054937) do

  create_table "channels", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "field1_name"
    t.boolean  "field1_enable"
    t.string   "field2_name"
    t.boolean  "field2_enable"
    t.string   "field3_name"
    t.boolean  "field3_enable"
    t.string   "field4_name"
    t.boolean  "field4_enable"
    t.string   "field5_name"
    t.boolean  "field5_enable"
    t.string   "field6_name"
    t.boolean  "field6_enable"
    t.string   "field7_name"
    t.boolean  "field7_enable"
    t.string   "field8_name"
    t.boolean  "field8_enable"
    t.string   "api_key"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_channels_on_user_id"
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
    t.index ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_microposts_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "sensor_values", force: :cascade do |t|
    t.float    "value1"
    t.float    "value2"
    t.float    "value3"
    t.float    "value4"
    t.float    "value5"
    t.float    "value6"
    t.float    "value7"
    t.float    "value8"
    t.datetime "timestamp"
    t.integer  "channel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_sensor_values_on_channel_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

end
