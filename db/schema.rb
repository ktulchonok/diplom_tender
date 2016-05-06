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

ActiveRecord::Schema.define(version: 20160113185119) do

  create_table "answers", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.integer  "user_id",    limit: 4
    t.integer  "tender_id",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "answers", ["tender_id"], name: "index_answers_on_tender_id", using: :btree
  add_index "answers", ["user_id"], name: "index_answers_on_user_id", using: :btree

  create_table "areas", force: :cascade do |t|
    t.string   "name_en",    limit: 255, null: false
    t.string   "name_ru",    limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name_en",    limit: 255, null: false
    t.string   "name_ru",    limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title_en",   limit: 255
    t.string   "title_ru",   limit: 255
    t.text     "text_en",    limit: 65535
    t.text     "text_ru",    limit: 65535
    t.string   "preview",    limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "tag_to_tenders", force: :cascade do |t|
    t.integer  "tag_id",     limit: 4
    t.integer  "tender_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "tag_to_tenders", ["tag_id"], name: "index_tag_to_tenders_on_tag_id", using: :btree
  add_index "tag_to_tenders", ["tender_id"], name: "index_tag_to_tenders_on_tender_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tenders", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "content",     limit: 65535
    t.integer  "amount",      limit: 4
    t.string   "currency",    limit: 255
    t.integer  "area_id",     limit: 4
    t.integer  "category_id", limit: 4
    t.integer  "user_id",     limit: 4
    t.string   "address",     limit: 255
    t.string   "status",      limit: 255,   default: "actual"
    t.date     "deadline"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "tenders", ["area_id"], name: "index_tenders_on_area_id", using: :btree
  add_index "tenders", ["category_id"], name: "index_tenders_on_category_id", using: :btree
  add_index "tenders", ["user_id"], name: "index_tenders_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "password_digest", limit: 255
    t.string   "email",           limit: 255
    t.string   "address",         limit: 255
    t.integer  "number",          limit: 4
    t.string   "photo",           limit: 255
    t.string   "role",            limit: 255
    t.string   "local",           limit: 255
    t.boolean  "subscription"
    t.string   "status",          limit: 255, default: "inactivated"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

end
