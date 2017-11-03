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

ActiveRecord::Schema.define(version: 20171103144116) do

  create_table "brouchers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stall_id"
    t.string "title"
    t.string "document"
    t.index ["stall_id"], name: "index_brouchers_on_stall_id"
  end

  create_table "commentreplies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "body"
    t.integer "comment_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_commentreplies_on_user_id"
  end

  create_table "commentreplies_comments", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "commentreply_id", null: false
    t.bigint "comment_id", null: false
    t.index ["comment_id", "commentreply_id"], name: "index_commentreplies_comments_on_comment_id_and_commentreply_id"
    t.index ["commentreply_id", "comment_id"], name: "index_commentreplies_comments_on_commentreply_id_and_comment_id"
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "topic_id"
    t.text "body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_comments_on_topic_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "companyname"
    t.string "website"
    t.text "email"
    t.text "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "number"
    t.string "email"
    t.string "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "seller_id"
    t.integer "user_id"
    t.index ["seller_id"], name: "index_contacts_on_seller_id"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "conversations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "recipient_id"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id", "sender_id"], name: "index_conversations_on_recipient_id_and_sender_id", unique: true
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id"
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "body"
    t.bigint "user_id"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "my_doubts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "destination"
    t.text "doubt_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_my_doubts_on_user_id"
  end

  create_table "my_queries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "query_number"
    t.text "destination"
    t.text "pax"
    t.text "duration"
    t.text "tour_requirements"
    t.integer "quotes_received"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.datetime "travel_date"
    t.text "child"
    t.text "querytype"
    t.index ["user_id"], name: "index_my_queries_on_user_id"
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "organization"
    t.integer "employees"
    t.string "website"
    t.string "designation"
    t.string "email"
    t.string "headoffice"
    t.string "branches"
    t.text "aboutus"
    t.string "firstname"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "deals"
    t.text "segments"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "department"
    t.integer "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "promotions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "destination"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "stall_id"
    t.bigint "seller_id"
    t.index ["seller_id"], name: "index_promotions_on_seller_id"
    t.index ["stall_id"], name: "index_promotions_on_stall_id"
  end

  create_table "quotes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "body"
    t.integer "my_query_id"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_quotes_on_user_id"
  end

  create_table "replies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "body"
    t.integer "my_doubt_id"
    t.bigint "user_id"
    t.integer "comment_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stall_id"
    t.bigint "user_id"
    t.string "body"
    t.index ["stall_id"], name: "index_reviews_on_stall_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "sellers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "company_name"
    t.string "website"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "region"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.index ["email"], name: "index_sellers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_sellers_on_reset_password_token", unique: true
  end

  create_table "stalls", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "about"
    t.text "segments"
    t.text "destination"
    t.text "offices"
    t.integer "company_id"
    t.bigint "user_id"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["company_id"], name: "index_stalls_on_company_id"
    t.index ["user_id"], name: "index_stalls_on_user_id"
  end

  create_table "topics", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "discussions"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_topics_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.string "First_Name"
    t.string "Last_Name"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts"
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "votes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "votable_type"
    t.bigint "votable_id"
    t.string "voter_type"
    t.bigint "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

  add_foreign_key "commentreplies", "users"
  add_foreign_key "contacts", "sellers"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "promotions", "sellers"
  add_foreign_key "quotes", "users"
  add_foreign_key "replies", "users"
  add_foreign_key "reviews", "users"
  add_foreign_key "stalls", "users"
end
