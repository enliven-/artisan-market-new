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

ActiveRecord::Schema.define(version: 20140513082659) do

  create_table "attribute_layers", force: true do |t|
    t.string   "label"
    t.integer  "palette_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attributes", force: true do |t|
    t.string   "label"
    t.integer  "attribute_layer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comment_threads", force: true do |t|
    t.integer  "pin_x"
    t.integer  "pin_y"
    t.integer  "design_version_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "comment_thread_id"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "design_versions", force: true do |t|
    t.integer  "project_id"
    t.text     "html"
    t.integer  "comment_thread_count", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "palettes", force: true do |t|
    t.string   "label"
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "product_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "label"
    t.text     "description"
    t.integer  "artisan_id"
    t.integer  "design_versions_count", default: 0
    t.integer  "parent_project_id"
    t.boolean  "show_in_catalog"
    t.integer  "product_category_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.integer  "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
