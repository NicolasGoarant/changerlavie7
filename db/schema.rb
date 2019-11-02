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

ActiveRecord::Schema.define(version: 2019_11_02_171947) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.string "photo"
    t.string "media"
    t.string "content"
    t.integer "library_id"
    t.integer "newspaper_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Paragraphe1"
    t.string "Paragraphe2"
    t.string "Paragraphe3"
    t.string "Paragraphe4"
    t.string "Paragraphe5"
    t.string "Paragraphe6"
    t.string "Paragraphe7"
    t.string "Paragraphe8"
    t.string "Paragraphe9"
    t.string "Paragraphe10"
    t.string "Paragraphe11"
    t.string "Paragraphe12"
    t.string "Paragraphe13"
    t.string "Paragraphe14"
    t.string "Paragraphe15"
    t.string "Paragraphe16"
    t.string "Paragraphe17"
    t.string "Paragraphe18"
    t.string "Paragraphe19"
    t.string "Paragraphe20"
    t.string "status"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.string "city"
    t.index ["library_id"], name: "index_articles_on_library_id"
    t.index ["newspaper_id"], name: "index_articles_on_newspaper_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newspapers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
