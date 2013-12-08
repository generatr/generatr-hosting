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

ActiveRecord::Schema.define(version: 20130425193110) do

  create_table "customers", force: true do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "email_address"
    t.string   "phone_number"
  end

  create_table "plans", force: true do |t|
    t.string   "stripe_id"
    t.float    "price"
    t.float    "tax"
    t.text     "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "plans", ["name"], name: "index_plans_on_name"

  create_table "subscriptions", force: true do |t|
    t.integer  "plan_id",                     null: false
    t.integer  "customer_id",                 null: false
    t.datetime "start_date",                  null: false
    t.boolean  "suspended",   default: false, null: false
    t.boolean  "deleted",     default: false, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "subscriptions", ["customer_id"], name: "index_subscriptions_on_customer_id"
  add_index "subscriptions", ["deleted"], name: "index_subscriptions_on_deleted"
  add_index "subscriptions", ["plan_id"], name: "index_subscriptions_on_plan_id"
  add_index "subscriptions", ["start_date"], name: "index_subscriptions_on_start_date"
  add_index "subscriptions", ["suspended"], name: "index_subscriptions_on_suspended"

end
