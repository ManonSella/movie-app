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

ActiveRecord::Schema[8.1].define(version: 2026_01_20_200303) do
  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "location"
    t.string "name"
    t.decimal "price"
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.decimal "budget"
    t.string "country"
    t.datetime "created_at", null: false
    t.string "description"
    t.string "name"
    t.string "picture_file_name", default: "placeholder.png"
    t.decimal "rating"
    t.string "theme", default: "comedy"
    t.datetime "updated_at", null: false
    t.integer "year"
  end
  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.datetime "created_at", null: false
    t.integer "movie_id", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["movie_id"], name: "index_reviews_on_movie_id"
  end

  add_foreign_key "reviews", "movies"
end
