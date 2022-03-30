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

ActiveRecord::Schema.define(version: 2022_03_30_173350) do

  create_table "knights", force: :cascade do |t|
    t.string "name"
    t.string "frame"
    t.float "body"
    t.float "larm"
    t.float "rarm"
    t.float "lleg"
    t.float "rleg"
    t.float "shield"
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "core"
    t.index ["player_id"], name: "index_knights_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "cc"
    t.integer "range"
    t.integer "char"
    t.integer "focus"
    t.integer "madness"
    t.string "health"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "subtype"
    t.integer "ammo"
    t.float "wear"
    t.integer "knight_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["knight_id"], name: "index_weapons_on_knight_id"
  end

  add_foreign_key "knights", "players"
  add_foreign_key "weapons", "knights"
end
