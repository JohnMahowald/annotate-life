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

ActiveRecord::Schema.define(version: 20140924003855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: true do |t|
    t.string   "title",       null: false
    t.integer  "chapter_num", null: false
    t.integer  "journal_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chapters", ["chapter_num"], name: "index_chapters_on_chapter_num", using: :btree
  add_index "chapters", ["journal_id"], name: "index_chapters_on_journal_id", using: :btree
  add_index "chapters", ["title"], name: "index_chapters_on_title", using: :btree

  create_table "journals", force: true do |t|
    t.string   "title",       null: false
    t.text     "description"
    t.integer  "user_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "journals", ["title"], name: "index_journals_on_title", using: :btree
  add_index "journals", ["user_id"], name: "index_journals_on_user_id", using: :btree

  create_table "stories", force: true do |t|
    t.string   "title",      null: false
    t.text     "text",       null: false
    t.integer  "chapter_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stories", ["chapter_id"], name: "index_stories_on_chapter_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "session_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", using: :btree

end
