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

ActiveRecord::Schema.define(version: 2020_06_02_231010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "p5_shapes", force: :cascade do |t|
    t.bigint "picture_id", null: false
    t.bigint "user_id", null: false
    t.string "fill", default: "0,0,0"
    t.integer "frequency", default: 0
    t.string "stroke", default: "0,0,0"
    t.integer "shape", default: 0
    t.integer "width", default: 5
    t.integer "height", default: 5
    t.integer "amount", default: 5
    t.integer "orbit", default: 0
    t.integer "spin", default: 0
    t.integer "stagger_radius", default: 0
    t.integer "stagger_place", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["picture_id"], name: "index_p5_shapes_on_picture_id"
    t.index ["user_id"], name: "index_p5_shapes_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "title"
    t.string "background", default: "255,255,255"
    t.integer "user_id"
    t.integer "mid_mapping_1", default: -100
    t.integer "mid_mapping_2", default: 100
    t.integer "treble_mapping_1", default: 100
    t.integer "treble_mapping_2", default: 250
    t.integer "bass_mapping_1", default: 50
    t.integer "bass_mapping_2", default: 200
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "p5_shapes", "pictures"
  add_foreign_key "p5_shapes", "users"
end
