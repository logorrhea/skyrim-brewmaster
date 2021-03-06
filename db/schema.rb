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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130328053516) do

  create_table "effects", :force => true do |t|
    t.string   "name"
    t.string   "skyrim_code"
    t.string   "effect"
    t.integer  "magnitude"
    t.integer  "value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "effects_ingredients", :id => false, :force => true do |t|
    t.integer "effect_id"
    t.integer "ingredient_id"
  end

  add_index "effects_ingredients", ["effect_id", "ingredient_id"], :name => "index_effects_ingredients_on_effect_id_and_ingredient_id", :unique => true

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.decimal  "weight"
    t.integer  "value"
    t.string   "version"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

end
