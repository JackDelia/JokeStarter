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

ActiveRecord::Schema.define(version: 20160504212410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "body",       null: false
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["project_id"], name: "index_comments_on_project_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "contributions", force: :cascade do |t|
    t.float    "amount",     null: false
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contributions", ["project_id"], name: "index_contributions_on_project_id", using: :btree
  add_index "contributions", ["user_id"], name: "index_contributions_on_user_id", using: :btree

  create_table "follows", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "follows", ["project_id"], name: "index_follows_on_project_id", using: :btree
  add_index "follows", ["user_id"], name: "index_follows_on_user_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "title",                                                                                                                                                                                    null: false
    t.text     "body",                                                                                                                                                                                     null: false
    t.json     "rewards",                                                                                                                                                                                  null: false
    t.integer  "user_id"
    t.float    "goal",                                                                                                                                                                                     null: false
    t.datetime "created_at",                                                                                                                                                                               null: false
    t.datetime "updated_at",                                                                                                                                                                               null: false
    t.string   "thumbnail_image_url", default: "http://vignette4.wikia.nocookie.net/thehungergamesrp/images/6/63/Joker_card_coca_cola_by_takes_pics_n_runs-d5wxc0g.jpg/revision/latest?cb=20150408075317"
    t.string   "main_image_url",      default: "/assets/logo.png"
  end

  add_index "projects", ["title"], name: "index_projects_on_title", unique: true, using: :btree
  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "updates", force: :cascade do |t|
    t.integer  "project_id"
    t.text     "body",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
  end

  add_index "updates", ["project_id"], name: "index_updates_on_project_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",                    null: false
    t.string   "password_digest",             null: false
    t.string   "session_token",               null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "money_in_cents",  default: 0
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "comments", "projects"
  add_foreign_key "comments", "users"
  add_foreign_key "contributions", "projects"
  add_foreign_key "contributions", "users"
  add_foreign_key "follows", "projects"
  add_foreign_key "follows", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "updates", "projects"
end
