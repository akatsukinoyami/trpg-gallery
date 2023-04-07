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

ActiveRecord::Schema.define(version: 2023_04_06_212929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.integer "age"
    t.integer "max_health"
    t.integer "max_mana"
    t.text "attitude_gods"
    t.text "attitude_magic"
    t.text "attitude_tech"
    t.text "attitude_races"
    t.text "problem_solving_method"
    t.integer "lewdness"
    t.integer "bloodiness"
    t.integer "strength"
    t.integer "constitution"
    t.integer "dexterity"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "cost"
    t.bigint "character_id"
    t.index ["character_id"], name: "index_items_on_character_id"
  end

  create_table "relatives", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "character_id"
    t.index ["character_id"], name: "index_relatives_on_character_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "cost"
    t.bigint "character_id"
    t.index ["character_id"], name: "index_skills_on_character_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
