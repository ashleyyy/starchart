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

ActiveRecord::Schema.define(version: 20170316193010) do

  create_table "stars", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.integer  "x_cord"
    t.integer  "y_cord"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stars", ["task_id"], name: "index_stars_on_task_id"
  add_index "stars", ["user_id"], name: "index_stars_on_user_id"

  create_table "tasks", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "description"
    t.date     "due_date"
    t.boolean  "recurring"
    t.boolean  "completed"
    t.boolean  "postponed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username",   null: false
    t.string   "pwd"
    t.string   "email"
    t.string   "gravatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end