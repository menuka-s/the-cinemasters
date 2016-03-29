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

ActiveRecord::Schema.define(version: 20160329203645) do


  create_table "critics", force: :cascade do |t|
    t.string   "username"
    t.text     "password_digest"
    t.string   "email"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "profile_image_file_name"
    t.string   "profile_image_content_type"
    t.integer  "profile_image_file_size"
    t.datetime "profile_image_updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.date     "pub_date"
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "events", ["creator_id"], name: "index_events_on_creator_id"
  add_index "events", ["movie_id"], name: "index_events_on_movie_id"

  create_table "invitations", force: :cascade do |t|
    t.string   "code"
    t.integer  "critic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "invitations", ["critic_id"], name: "index_invitations_on_critic_id"

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.string   "imdb_url"
    t.string   "img_url"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "movie_image_file_name"
    t.string   "movie_image_content_type"
    t.integer  "movie_image_file_size"
    t.datetime "movie_image_updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "critic_id"
    t.integer  "event_id"
    t.string   "content"
    t.string   "ratings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["critic_id"], name: "index_reviews_on_critic_id"
  add_index "reviews", ["event_id"], name: "index_reviews_on_event_id"

end
