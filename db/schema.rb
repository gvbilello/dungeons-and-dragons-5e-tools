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

ActiveRecord::Schema.define(version: 20170503181835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "attack_bonus"
    t.string   "damage_dice"
    t.integer  "damage_bonus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "creatures", force: :cascade do |t|
    t.string   "name",                   null: false
    t.string   "size"
    t.string   "type"
    t.string   "subtype"
    t.string   "alignment"
    t.integer  "armor_class"
    t.integer  "hit_points"
    t.string   "hit_dice"
    t.string   "speed"
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.integer  "constitution_save"
    t.integer  "intelligence_save"
    t.integer  "wisdom_save"
    t.integer  "history"
    t.integer  "perception"
    t.string   "damage_vulnerabilities"
    t.string   "damage_resistances"
    t.string   "damage_immunities"
    t.string   "condition_immunities"
    t.string   "senses"
    t.string   "languages"
    t.string   "challenge_rating"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "legendary_actions", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "attack_bonus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "special_abilities", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "attack_bonus"
    t.string   "damage_dice"
    t.integer  "damage_bonus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "desc",          null: false
    t.string   "higher_level"
    t.string   "page",          null: false
    t.string   "range",         null: false
    t.string   "components",    null: false
    t.string   "material"
    t.string   "ritual",        null: false
    t.string   "duration",      null: false
    t.string   "concentration", null: false
    t.string   "casting_time",  null: false
    t.string   "level",         null: false
    t.string   "school",        null: false
    t.string   "spell_class",   null: false
    t.string   "archetype"
    t.string   "circles"
    t.string   "oaths"
    t.string   "domains"
    t.string   "patrons"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
