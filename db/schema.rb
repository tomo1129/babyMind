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

ActiveRecord::Schema.define(version: 20171026022517) do

  create_table "questionnaire_answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "thread_bases_id"
    t.bigint "users_id"
    t.bigint "questionnaires_id"
    t.bigint "questionnaire_choices_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questionnaire_choices_id"], name: "index_questionnaire_answers_on_questionnaire_choices_id"
    t.index ["questionnaires_id"], name: "index_questionnaire_answers_on_questionnaires_id"
    t.index ["thread_bases_id"], name: "index_questionnaire_answers_on_thread_bases_id"
    t.index ["users_id"], name: "index_questionnaire_answers_on_users_id"
  end

  create_table "questionnaire_choices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "questionnaires_id"
    t.string "choice", limit: 1024
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questionnaires_id"], name: "index_questionnaire_choices_on_questionnaires_id"
  end

  create_table "questionnaire_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "type"
  end

  create_table "questionnaires", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "question", limit: 1024
    t.bigint "questionnaire_types_id"
    t.boolean "required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questionnaire_types_id"], name: "index_questionnaires_on_questionnaire_types_id"
  end

  create_table "relations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "key"
    t.string "name"
  end

  create_table "responses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "thread_bases_id"
    t.text "response"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["thread_bases_id"], name: "index_responses_on_thread_bases_id"
    t.index ["users_id"], name: "index_responses_on_users_id"
  end

  create_table "sample_names", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "relation_id"
    t.string "name"
    t.index ["relation_id"], name: "index_sample_names_on_relation_id"
  end

  create_table "thread_bases", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "body"
    t.bigint "relations_id"
    t.bigint "users_id"
    t.bigint "questionnaires_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questionnaires_id"], name: "index_thread_bases_on_questionnaires_id"
    t.index ["relations_id"], name: "index_thread_bases_on_relations_id"
    t.index ["users_id"], name: "index_thread_bases_on_users_id"
  end

  create_table "user_names", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "relation_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["relation_id"], name: "index_user_names_on_relation_id"
    t.index ["user_id"], name: "index_user_names_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "questionnaire_answers", "questionnaire_choices", column: "questionnaire_choices_id"
  add_foreign_key "questionnaire_answers", "questionnaires", column: "questionnaires_id"
  add_foreign_key "questionnaire_answers", "thread_bases", column: "thread_bases_id"
  add_foreign_key "questionnaire_answers", "users", column: "users_id"
  add_foreign_key "questionnaire_choices", "questionnaires", column: "questionnaires_id"
  add_foreign_key "questionnaires", "questionnaire_types", column: "questionnaire_types_id"
  add_foreign_key "responses", "thread_bases", column: "thread_bases_id"
  add_foreign_key "responses", "users", column: "users_id"
  add_foreign_key "sample_names", "relations"
  add_foreign_key "thread_bases", "questionnaires", column: "questionnaires_id"
  add_foreign_key "thread_bases", "relations", column: "relations_id"
  add_foreign_key "thread_bases", "users", column: "users_id"
  add_foreign_key "user_names", "relations"
  add_foreign_key "user_names", "users"
end
