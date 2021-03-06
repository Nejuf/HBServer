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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141102230044) do

  create_table "properties", :force => true do |t|
    t.integer  "base_value"
    t.integer  "level",              :default => 0
    t.integer  "base_rent_per_hour"
    t.string   "address"
    t.string   "name"
    t.integer  "owner_id"
    t.string   "coords"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "properties", ["coords"], :name => "index_properties_on_coords"
  add_index "properties", ["owner_id"], :name => "index_properties_on_owner_id"

  create_table "users", :force => true do |t|
    t.string   "email",           :null => false
    t.string   "password_digest", :null => false
    t.string   "session_token"
    t.string   "username",        :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["session_token"], :name => "index_users_on_session_token"
  add_index "users", ["username"], :name => "index_users_on_username"

end
