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

<<<<<<< Updated upstream
ActiveRecord::Schema.define(version: 20150725155715) do
=======
<<<<<<< Updated upstream
ActiveRecord::Schema.define(version: 20150726165707) do
=======
<<<<<<< Updated upstream
ActiveRecord::Schema.define(version: 20150725155715) do
=======
ActiveRecord::Schema.define(version: 20150726220416) do
>>>>>>> Stashed changes
>>>>>>> Stashed changes
>>>>>>> Stashed changes

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< Updated upstream
=======
<<<<<<< Updated upstream
  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.boolean  "purchased",  default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "list_id"
  end

  add_index "items", ["list_id"], name: "index_items_on_list_id", using: :btree

=======
<<<<<<< Updated upstream
=======
  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.boolean  "purchased",  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "list_id"
    t.integer  "store_id"
  end

  add_index "items", ["list_id"], name: "index_items_on_list_id", using: :btree
  add_index "items", ["store_id"], name: "index_items_on_store_id", using: :btree

>>>>>>> Stashed changes
>>>>>>> Stashed changes
>>>>>>> Stashed changes
  create_table "lists", force: :cascade do |t|
    t.string "name"
  end

<<<<<<< Updated upstream
=======
<<<<<<< Updated upstream
=======
<<<<<<< Updated upstream
=======
>>>>>>> Stashed changes
  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "items", "lists"
<<<<<<< Updated upstream
=======
  add_foreign_key "items", "stores"
>>>>>>> Stashed changes
>>>>>>> Stashed changes
>>>>>>> Stashed changes
end
