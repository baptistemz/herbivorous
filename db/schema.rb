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

ActiveRecord::Schema.define(version: 20160604154844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.integer  "days_from_start"
    t.text     "action"
    t.string   "time_needed"
    t.integer  "vegetable_process_id"
    t.integer  "seed_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["seed_id"], name: "index_events_on_seed_id", using: :btree
    t.index ["vegetable_process_id"], name: "index_events_on_vegetable_process_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "grade"
    t.text     "comment"
    t.integer  "vegetable_process_id"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
    t.index ["vegetable_process_id"], name: "index_reviews_on_vegetable_process_id", using: :btree
  end

  create_table "seeds", force: :cascade do |t|
    t.string   "kind"
    t.date     "term_date"
    t.date     "planting_date"
    t.integer  "vegetable_process_id"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_id"], name: "index_seeds_on_user_id", using: :btree
    t.index ["vegetable_process_id"], name: "index_seeds_on_vegetable_process_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vegetable_processes", force: :cascade do |t|
    t.integer  "maturation_length"
    t.string   "climate"
    t.string   "environment"
    t.integer  "difficulty"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "kind"
    t.string   "name"
  end

  add_foreign_key "events", "seeds"
  add_foreign_key "events", "vegetable_processes"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "vegetable_processes"
  add_foreign_key "seeds", "users"
  add_foreign_key "seeds", "vegetable_processes"
end
