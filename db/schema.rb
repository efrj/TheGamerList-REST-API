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

ActiveRecord::Schema[7.0].define(version: 2023_05_06_003300) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banners", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "url_link"
    t.string "image"
    t.string "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "slug"
    t.string "image"
    t.string "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "genre_id", null: false
    t.bigint "softhouse_id", null: false
    t.bigint "platform_id", null: false
    t.string "video_url"
    t.integer "release_year"
    t.string "image"
    t.string "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_games_on_genre_id"
    t.index ["platform_id"], name: "index_games_on_platform_id"
    t.index ["softhouse_id"], name: "index_games_on_softhouse_id"
  end

  create_table "generations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "starting_year"
    t.string "image"
    t.string "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "release_year"
    t.bigint "generation_id", null: false
    t.string "image"
    t.string "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generation_id"], name: "index_platforms_on_generation_id"
  end

  create_table "platforms_informations", force: :cascade do |t|
    t.bigint "platform_id", null: false
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["platform_id"], name: "index_platforms_informations_on_platform_id"
  end

  create_table "softhouses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.string "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "games", "genres"
  add_foreign_key "games", "platforms"
  add_foreign_key "games", "softhouses"
  add_foreign_key "platforms", "generations"
  add_foreign_key "platforms_informations", "platforms"
end
