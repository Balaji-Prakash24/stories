# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_09_22_081204) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "story_id", null: false
    t.string "user_name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_comments_on_story_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "story_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_likes_on_story_id"
  end

  create_table "replies", force: :cascade do |t|
    t.bigint "story_id", null: false
    t.bigint "comment_id", null: false
    t.string "user_name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_replies_on_comment_id"
    t.index ["story_id"], name: "index_replies_on_story_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.text "description"
    t.boolean "likes"
    t.string "by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcoms", force: :cascade do |t|
    t.bigint "story_id", null: false
    t.bigint "comment_id", null: false
    t.string "user_name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_subcoms_on_comment_id"
    t.index ["story_id"], name: "index_subcoms_on_story_id"
  end

  add_foreign_key "comments", "stories"
  add_foreign_key "likes", "stories"
  add_foreign_key "replies", "comments"
  add_foreign_key "replies", "stories"
  add_foreign_key "subcoms", "comments"
  add_foreign_key "subcoms", "stories"
end
