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

ActiveRecord::Schema.define(version: 2020_11_11_180922) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "mood"
  end

  create_table "catalogs", force: :cascade do |t|
    t.integer "activities_id"
    t.integer "destination_id"
    t.index ["activities_id"], name: "index_catalogs_on_activities_id"
    t.index ["destination_id"], name: "index_catalogs_on_destination_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "city"
    t.string "scene"
    t.integer "budget"
  end

end
