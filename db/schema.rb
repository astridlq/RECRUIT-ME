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

ActiveRecord::Schema.define(version: 2019_05_27_163331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.boolean "accepted"
    t.bigint "vacancy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vacancy_id"], name: "index_conversations_on_vacancy_id"
  end

  create_table "develop_skills", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_develop_skills_on_skill_id"
    t.index ["user_id"], name: "index_develop_skills_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "type"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_skills", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_user_skills_on_skill_id"
    t.index ["user_id"], name: "index_user_skills_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "first_name"
    t.string "last_name"
    t.string "job_title"
    t.string "description"
    t.string "department"
    t.boolean "is_manager", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vacancies", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "department"
    t.date "start_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vacancies_on_user_id"
  end

  create_table "vacancy_skills", force: :cascade do |t|
    t.bigint "vacancy_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_vacancy_skills_on_skill_id"
    t.index ["vacancy_id"], name: "index_vacancy_skills_on_vacancy_id"
  end

  add_foreign_key "conversations", "vacancies"
  add_foreign_key "develop_skills", "skills"
  add_foreign_key "develop_skills", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "user_skills", "skills"
  add_foreign_key "user_skills", "users"
  add_foreign_key "vacancies", "users"
  add_foreign_key "vacancy_skills", "skills"
  add_foreign_key "vacancy_skills", "vacancies"
end
