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

ActiveRecord::Schema.define(version: 20180410014728) do

  create_table "issues", force: :cascade do |t|
    t.string "problem_link"
    t.string "solution_link"
    t.text "description"
    t.integer "upvotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "opinion_id"
    t.index ["opinion_id"], name: "index_issues_on_opinion_id"
    t.index ["user_id"], name: "index_issues_on_user_id"
  end

  create_table "opinions", force: :cascade do |t|
    t.text "solution_approach"
    t.string "solution_link"
    t.text "suggestion"
    t.integer "upvotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "issue_id"
    t.index ["issue_id"], name: "index_opinions_on_issue_id"
    t.index ["user_id"], name: "index_opinions_on_user_id"
  end

  create_table "uers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_uers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_uers_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ratings_sum"
    t.integer "users_rated"
    t.integer "opinion_id"
    t.integer "issue_id"
    t.integer "user_quality"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["issue_id"], name: "index_users_on_issue_id"
    t.index ["opinion_id"], name: "index_users_on_opinion_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
