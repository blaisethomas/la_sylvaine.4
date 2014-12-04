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

ActiveRecord::Schema.define(version: 20141204042944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "lesson_has_teachers", force: true do |t|
    t.integer  "lesson_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lesson_has_teachers", ["lesson_id"], name: "index_lesson_has_teachers_on_lesson_id", using: :btree
  add_index "lesson_has_teachers", ["teacher_id"], name: "index_lesson_has_teachers_on_teacher_id", using: :btree

  create_table "lessons", force: true do |t|
    t.integer  "location_id"
    t.float    "price"
    t.string   "genre"
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["location_id"], name: "index_lessons_on_location_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "postcode"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "pupil_has_lessons", force: true do |t|
    t.integer  "pupil_id"
    t.integer  "lesson_id"
    t.integer  "payment_id"
    t.float    "adjusted_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pupil_has_lessons", ["lesson_id"], name: "index_pupil_has_lessons_on_lesson_id", using: :btree
  add_index "pupil_has_lessons", ["payment_id"], name: "index_pupil_has_lessons_on_payment_id", using: :btree
  add_index "pupil_has_lessons", ["pupil_id"], name: "index_pupil_has_lessons_on_pupil_id", using: :btree

  create_table "pupil_has_years", force: true do |t|
    t.integer  "year_id"
    t.integer  "payment_id"
    t.integer  "pupil_id"
    t.float    "adjusted_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pupil_has_years", ["payment_id"], name: "index_pupil_has_years_on_payment_id", using: :btree
  add_index "pupil_has_years", ["pupil_id"], name: "index_pupil_has_years_on_pupil_id", using: :btree
  add_index "pupil_has_years", ["year_id"], name: "index_pupil_has_years_on_year_id", using: :btree

  create_table "pupils", force: true do |t|
    t.integer  "user_id"
    t.string   "school"
    t.string   "class_form"
    t.string   "telephone_number"
    t.string   "email"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_relationship"
    t.string   "emergency_contact_telephone"
    t.string   "previous_dancing_schools"
    t.string   "most_recent_examination_taken"
    t.string   "exam_result"
    t.text     "medical_conditions"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pupils", ["user_id"], name: "index_pupils_on_user_id", using: :btree

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "first_name"
    t.string   "surname"
    t.string   "address1"
    t.string   "address2"
    t.string   "postcode"
    t.string   "mobile_phone"
    t.string   "alternate_phone"
    t.string   "occupation"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "years", force: true do |t|
    t.integer  "year"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
