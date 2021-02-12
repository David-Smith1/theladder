# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_12_122815) do

  create_table "bots", force: :cascade do |t|
    t.string "name"
    t.integer "macro_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jgs", force: :cascade do |t|
    t.string "name"
    t.integer "macro_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mids", force: :cascade do |t|
    t.string "name"
    t.integer "macro_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sups", force: :cascade do |t|
    t.string "name"
    t.integer "macro_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "top_id", null: false
    t.integer "mid_id", null: false
    t.integer "jg_id", null: false
    t.integer "bot_id", null: false
    t.integer "sup_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bot_id"], name: "index_teams_on_bot_id"
    t.index ["jg_id"], name: "index_teams_on_jg_id"
    t.index ["mid_id"], name: "index_teams_on_mid_id"
    t.index ["sup_id"], name: "index_teams_on_sup_id"
    t.index ["top_id"], name: "index_teams_on_top_id"
  end

  create_table "tops", force: :cascade do |t|
    t.string "name"
    t.integer "macro_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "teams", "bots"
  add_foreign_key "teams", "jgs"
  add_foreign_key "teams", "mids"
  add_foreign_key "teams", "sups"
  add_foreign_key "teams", "tops"
end
