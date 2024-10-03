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

ActiveRecord::Schema[7.2].define(version: 2024_10_03_053759) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "volume_id", null: false
    t.index ["volume_id"], name: "index_chapters_on_volume_id"
  end

  create_table "novels", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "genre"
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_novels_on_author_id"
  end

  create_table "volumes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "novel_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["novel_id"], name: "index_volumes_on_novel_id"
  end

  add_foreign_key "chapters", "volumes"
  add_foreign_key "novels", "authors"
  add_foreign_key "volumes", "novels"
end
