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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 0) do
=======
ActiveRecord::Schema.define(version: 20151019160019) do
>>>>>>> 6df7299adf2a0db477d1ff751eb6a47b29437437
=======
ActiveRecord::Schema.define(version: 0) do
>>>>>>> 113cf0c804f93a5669d7d387f2e96cc646fc8d0e

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
<<<<<<< HEAD
=======
  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "image"
    t.boolean  "subscription",    default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

>>>>>>> 6df7299adf2a0db477d1ff751eb6a47b29437437
=======
>>>>>>> 113cf0c804f93a5669d7d387f2e96cc646fc8d0e
end
