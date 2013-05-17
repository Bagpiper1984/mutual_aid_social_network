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

ActiveRecord::Schema.define(:version => 20130517192512) do

  create_table "cans", :force => true do |t|
    t.integer  "user_id"
    t.string   "short_description"
    t.text     "long_description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "sphere"
  end

  add_index "cans", ["user_id", "created_at"], :name => "index_cans_on_user_id_and_created_at"

  create_table "needs", :force => true do |t|
    t.integer  "user_id"
    t.string   "short_description"
    t.string   "sphere"
    t.string   "long_description"
    t.date     "deadline"
    t.boolean  "executed"
    t.integer  "who_executed"
    t.date     "when_executed"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "needs", ["user_id", "created_at"], :name => "index_needs_on_user_id_and_created_at"

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password_digest"
    t.string   "name"
    t.string   "surname"
    t.date     "date_of_birth"
    t.string   "country"
    t.string   "city"
    t.string   "education"
    t.string   "member_of_volunteer_organizations"
    t.string   "email"
    t.string   "phone_number"
    t.string   "other_contacts"
    t.string   "remember_token"
    t.boolean  "admin"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "users", ["remember_token"], :name => "remember_token_index"

end
