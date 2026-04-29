ActiveRecord::Schema[7.2].define(version: 2026_04_29_120100) do
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.string "slug", null: false
    t.text "synopsis"
    t.integer "release_year", null: false
    t.integer "duration_minutes"
    t.string "rating"
    t.string "poster_url"
    t.boolean "featured", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_movies_on_slug", unique: true
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.string "reviewer_name", null: false
    t.integer "rating", null: false
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_reviews_on_movie_id"
  end

  add_foreign_key "reviews", "movies"
end
