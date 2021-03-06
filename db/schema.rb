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

ActiveRecord::Schema.define(version: 20150115114930) do

  create_table "authors", force: true do |t|
    t.string   "photo"
    t.string   "name",       default: "", null: false
    t.text     "about",      default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name",            default: "",   null: false
    t.integer  "university_id"
    t.string   "code",            default: "",   null: false
    t.date     "date_begin",                     null: false
    t.string   "duration_course", default: "",   null: false
    t.string   "hours_per_week",  default: "",   null: false
    t.string   "picture"
    t.string   "title"
    t.text     "about",           default: "",   null: false
    t.text     "notes"
    t.integer  "limit",           default: 0,    null: false
    t.boolean  "free",            default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["date_begin"], name: "index_courses_on_date_begin"
  add_index "courses", ["free"], name: "index_courses_on_free"
  add_index "courses", ["name"], name: "index_courses_on_name"

  create_table "feedbacks", force: true do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "title"
    t.text     "message",    null: false
    t.string   "target",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feedbacks", ["email"], name: "index_feedbacks_on_email"
  add_index "feedbacks", ["target"], name: "index_feedbacks_on_target"

  create_table "identities", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id"

  create_table "news", force: true do |t|
    t.string   "title",       default: "", null: false
    t.string   "logo"
    t.string   "picture"
    t.text     "description", default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pupils", force: true do |t|
    t.integer  "users_id"
    t.integer  "courses_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.integer  "courses_id"
    t.integer  "authors_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universities", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "picture"
    t.text     "description"
    t.text     "short_description", default: "", null: false
    t.string   "abbreviation",      default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",                   default: "", null: false
    t.string   "education"
    t.string   "causes"
    t.string   "qualification"
    t.string   "primary_language"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
