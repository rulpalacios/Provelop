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

ActiveRecord::Schema.define(version: 2021_12_14_164636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creators", force: :cascade do |t|
    t.string "name"
    t.string "about"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_creators_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.string "learn"
    t.string "requirements"
    t.bigint "creator_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "modality"
    t.string "event_type"
    t.string "specialization"
    t.index ["creator_id"], name: "index_events_on_creator_id"
  end

  create_table "expected_learnings", force: :cascade do |t|
    t.string "learning"
    t.bigint "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_expected_learnings_on_event_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "organization"
    t.string "dates"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_purchases_on_event_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "requirements", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.string "requirement"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_requirements_on_event_id"
  end

  create_table "studies", force: :cascade do |t|
    t.string "title"
    t.string "institution"
    t.string "dates"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_studies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "about"
    t.string "country"
    t.string "name"
    t.integer "role", default: 0
    t.string "specialization"
    t.integer "years_of_experience"
  end

  add_foreign_key "creators", "users"
  add_foreign_key "events", "creators"
  add_foreign_key "expected_learnings", "events"
  add_foreign_key "jobs", "users"
  add_foreign_key "purchases", "events"
  add_foreign_key "purchases", "users"
  add_foreign_key "requirements", "events"
  add_foreign_key "studies", "users"
end
