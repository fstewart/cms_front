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

ActiveRecord::Schema.define(version: 20161110145104) do

  create_table "accordions", force: :cascade do |t|
    t.integer  "priority",      limit: 4
    t.string   "title",         limit: 255
    t.text     "desc",          limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "page_id",       limit: 4
    t.boolean  "status"
    t.integer  "department_id", limit: 4
    t.integer  "section_id",    limit: 4
  end

  add_index "accordions", ["department_id"], name: "index_accordions_on_department_id", using: :btree
  add_index "accordions", ["page_id"], name: "index_accordions_on_page_id", using: :btree
  add_index "accordions", ["section_id"], name: "index_accordions_on_section_id", using: :btree

  create_table "alumni_achievements", force: :cascade do |t|
    t.string   "title",                       limit: 255
    t.string   "first_name",                  limit: 255
    t.string   "last_name",                   limit: 255
    t.string   "suffix",                      limit: 255
    t.string   "grad_class",                  limit: 255
    t.string   "email",                       limit: 255
    t.string   "major",                       limit: 255
    t.string   "current_job_title",           limit: 255
    t.string   "current_employer",            limit: 255
    t.string   "current_city",                limit: 255
    t.string   "favorite_professor_or_class", limit: 255
    t.text     "job_history",                 limit: 65535
    t.text     "achievements",                limit: 65535
    t.string   "media",                       limit: 255
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "alumni_chapters", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.string   "address",         limit: 255
    t.float    "latitude",        limit: 24
    t.float    "longitude",       limit: 24
    t.integer  "members",         limit: 4
    t.boolean  "active"
    t.integer  "alumni_event_id", limit: 4
    t.text     "contact",         limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "alumni_chapters_alumni_events", id: false, force: :cascade do |t|
    t.integer "alumni_chapter_id", limit: 4
    t.integer "alumni_event_id",   limit: 4
  end

  add_index "alumni_chapters_alumni_events", ["alumni_chapter_id", "alumni_event_id"], name: "alumni_event_index", unique: true, using: :btree

  create_table "alumni_events", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.text     "description",       limit: 65535
    t.string   "location",          limit: 255
    t.datetime "event_start"
    t.datetime "event_end"
    t.integer  "alumni_chapter_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "article_news_categories", force: :cascade do |t|
    t.integer  "article_id",       limit: 4
    t.integer  "news_category_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "article_news_categories", ["article_id"], name: "index_article_news_categories_on_article_id", using: :btree
  add_index "article_news_categories", ["news_category_id"], name: "index_article_news_categories_on_news_category_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.text     "body",               limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "news_category_id",   limit: 4
    t.string   "url",                limit: 255
    t.string   "quote",              limit: 255
    t.string   "name",               limit: 255
    t.string   "designation",        limit: 255
    t.string   "phone",              limit: 255
    t.string   "email",              limit: 255
    t.string   "story_url",          limit: 255
    t.string   "story_short_desc",   limit: 255
    t.string   "quote_author",       limit: 255
    t.string   "quote_author_title", limit: 255
    t.string   "photo",              limit: 255
    t.string   "home_photo",         limit: 255
    t.string   "school_affi_degree", limit: 255
    t.integer  "school_affi_year",   limit: 4
    t.date     "news_date"
    t.date     "approved_date"
    t.boolean  "featured"
    t.boolean  "quoted"
    t.boolean  "status"
    t.string   "slug",               limit: 255
    t.integer  "user_id",            limit: 4
    t.string   "author",             limit: 255
  end

  add_index "articles", ["news_category_id"], name: "index_articles_on_news_category_id", using: :btree
  add_index "articles", ["slug"], name: "index_articles_on_slug", using: :btree
  add_index "articles", ["user_id"], name: "index_articles_on_user_id", using: :btree

  create_table "background_options", force: :cascade do |t|
    t.string   "option",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "slug",       limit: 255
    t.string   "url",        limit: 255
    t.text     "body",       limit: 65535
  end

  add_index "buildings", ["slug"], name: "index_buildings_on_slug", using: :btree

  create_table "ca_applicants", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.string   "preferred_name",       limit: 255
    t.string   "home_phone",           limit: 255
    t.string   "cwid",                 limit: 255
    t.string   "email",                limit: 255
    t.string   "current_address",      limit: 255
    t.string   "permanent_address",    limit: 255
    t.string   "classification",       limit: 255
    t.string   "major",                limit: 255
    t.string   "minor",                limit: 255
    t.string   "gpa",                  limit: 255
    t.date     "graduation_date"
    t.string   "cell_phone",           limit: 255
    t.text     "availability",         limit: 65535
    t.text     "aspirations",          limit: 65535
    t.boolean  "meeting_availability"
    t.text     "strengths",            limit: 65535
    t.text     "benefits",             limit: 65535
    t.string   "hours",                limit: 255
    t.boolean  "committment"
    t.boolean  "prior_service"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "ca_cv",                limit: 255
  end

  create_table "calltoactions", force: :cascade do |t|
    t.integer  "priority",   limit: 4
    t.string   "title",      limit: 255
    t.string   "url",        limit: 255
    t.string   "target",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "page_id",    limit: 4
    t.integer  "section_id", limit: 4
    t.string   "color",      limit: 255
  end

  add_index "calltoactions", ["page_id"], name: "index_calltoactions_on_page_id", using: :btree
  add_index "calltoactions", ["section_id"], name: "index_calltoactions_on_section_id", using: :btree

  create_table "carousels", force: :cascade do |t|
    t.integer  "page_id",        limit: 4
    t.integer  "slide_priority", limit: 4
    t.string   "slide_image",    limit: 255
    t.string   "slide_title",    limit: 255
    t.string   "slide_desc",     limit: 255
    t.boolean  "video"
    t.string   "video_url",      limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "status"
    t.integer  "department_id",  limit: 4
    t.integer  "section_id",     limit: 4
  end

  add_index "carousels", ["department_id"], name: "index_carousels_on_department_id", using: :btree
  add_index "carousels", ["page_id"], name: "index_carousels_on_page_id", using: :btree
  add_index "carousels", ["section_id"], name: "index_carousels_on_section_id", using: :btree

  create_table "centers", force: :cascade do |t|
    t.integer  "unit_type_id",    limit: 4
    t.string   "name",            limit: 255
    t.string   "slug",            limit: 255
    t.integer  "building_id",     limit: 4
    t.string   "phone",           limit: 255
    t.string   "fax",             limit: 255
    t.string   "office",          limit: 255
    t.string   "mailing_address", limit: 255
    t.string   "po_box",          limit: 255
    t.string   "header_image",    limit: 255
    t.string   "user_id",         limit: 255
    t.string   "facebook",        limit: 255
    t.string   "linkedin",        limit: 255
    t.string   "twitter",         limit: 255
    t.string   "instagram",       limit: 255
    t.string   "snapchat",        limit: 255
    t.string   "vimeo",           limit: 255
    t.string   "youtube",         limit: 255
    t.string   "contact_name",    limit: 255
    t.string   "contact_email",   limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "url",             limit: 255
  end

  create_table "ces_attendees", force: :cascade do |t|
    t.integer  "ces_event_id",             limit: 4
    t.integer  "ces_event_reservation_id", limit: 4
    t.string   "first_name",               limit: 255
    t.string   "last_name",                limit: 255
    t.string   "phone",                    limit: 255
    t.string   "email",                    limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "ces_attendees", ["ces_event_id"], name: "index_ces_attendees_on_ces_event_id", using: :btree
  add_index "ces_attendees", ["ces_event_reservation_id"], name: "index_ces_attendees_on_ces_event_reservation_id", using: :btree

  create_table "ces_event_reservations", force: :cascade do |t|
    t.integer  "ces_event_id",       limit: 4
    t.string   "title",              limit: 255
    t.integer  "comp_tickets",       limit: 4
    t.integer  "paid_adult_tickets", limit: 4
    t.integer  "paid_child_tickets", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "ces_event_reservations", ["ces_event_id"], name: "index_ces_event_reservations_on_ces_event_id", using: :btree

  create_table "ces_events", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.text     "description",     limit: 65535
    t.string   "ces_promo",       limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "is_published"
    t.datetime "rsvp_start_date"
    t.datetime "rsvp_end_date"
    t.string   "slug",            limit: 255
  end

  create_table "ces_pregame_rsvps", force: :cascade do |t|
    t.integer  "game1_comp_tickets",  limit: 4
    t.integer  "game1_paid_tickets",  limit: 4
    t.integer  "game1_child_tickets", limit: 4
    t.integer  "game2_comp_tickets",  limit: 4
    t.integer  "game2_paid_tickets",  limit: 4
    t.integer  "game2_child_tickets", limit: 4
    t.integer  "game3_comp_tickets",  limit: 4
    t.integer  "game3_paid_tickets",  limit: 4
    t.integer  "game3_child_tickets", limit: 4
    t.integer  "game4_comp_tickets",  limit: 4
    t.integer  "game4_paid_tickets",  limit: 4
    t.integer  "game4_child_tickets", limit: 4
    t.integer  "game5_comp_tickets",  limit: 4
    t.integer  "game5_paid_tickets",  limit: 4
    t.integer  "game5_child_tickets", limit: 4
    t.integer  "game6_comp_tickets",  limit: 4
    t.integer  "game6_paid_tickets",  limit: 4
    t.integer  "game6_child_tickets", limit: 4
    t.integer  "game7_comp_tickets",  limit: 4
    t.integer  "game7_paid_tickets",  limit: 4
    t.integer  "game7_child_tickets", limit: 4
    t.string   "first_name",          limit: 255
    t.string   "last_name",           limit: 255
    t.string   "phone",               limit: 255
    t.string   "email",               limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "college_events", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.text     "desc",          limit: 65535
    t.integer  "department_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "college_events", ["department_id"], name: "index_college_events_on_department_id", using: :btree

  create_table "college_videos", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "slug",       limit: 255
  end

  add_index "college_videos", ["slug"], name: "index_college_videos_on_slug", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.integer  "unit_type_id", limit: 4
    t.string   "name",         limit: 255
    t.string   "title",        limit: 255
    t.string   "address_1",    limit: 255
    t.string   "address2",     limit: 255
    t.string   "address3",     limit: 255
    t.string   "phone",        limit: 255
    t.string   "email",        limit: 255
    t.boolean  "status"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "slug",         limit: 255
    t.string   "url",          limit: 255
  end

  add_index "contacts", ["slug"], name: "index_contacts_on_slug", using: :btree
  add_index "contacts", ["unit_type_id"], name: "index_contacts_on_unit_type_id", using: :btree

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id",    limit: 4
    t.integer  "recipient_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_categories", force: :cascade do |t|
    t.integer  "department_id", limit: 4
    t.string   "name",          limit: 255
    t.string   "desc",          limit: 255
    t.boolean  "status"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "course_categories", ["department_id"], name: "index_course_categories_on_department_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "code",       limit: 255
    t.string   "short_desc", limit: 255
    t.string   "desc",       limit: 255
    t.string   "footnote",   limit: 255
    t.boolean  "type"
    t.boolean  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "custom_pages", force: :cascade do |t|
    t.integer  "parent_id",        limit: 4
    t.integer  "unit_id",          limit: 4
    t.string   "title",            limit: 255
    t.string   "page_heading",     limit: 255
    t.string   "url",              limit: 255
    t.string   "external_url",     limit: 255
    t.text     "description",      limit: 65535
    t.string   "meta_title",       limit: 255
    t.text     "meta_description", limit: 65535
    t.text     "meta_keyword",     limit: 65535
    t.boolean  "status"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "degree_categories", force: :cascade do |t|
    t.integer  "unit_type_id",  limit: 4
    t.integer  "department_id", limit: 4
    t.string   "name",          limit: 255
    t.string   "desc",          limit: 255
    t.boolean  "status"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "slug",          limit: 255
    t.string   "url",           limit: 255
  end

  add_index "degree_categories", ["department_id"], name: "index_degree_categories_on_department_id", using: :btree
  add_index "degree_categories", ["slug"], name: "index_degree_categories_on_slug", using: :btree
  add_index "degree_categories", ["unit_type_id"], name: "index_degree_categories_on_unit_type_id", using: :btree

  create_table "degrees", force: :cascade do |t|
    t.integer  "unit_type_id",       limit: 4
    t.integer  "department_id",      limit: 4
    t.integer  "degree_category_id", limit: 4
    t.string   "name",               limit: 255
    t.string   "short_desc",         limit: 255
    t.string   "desc",               limit: 255
    t.string   "course_assigned",    limit: 255
    t.boolean  "status"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "slug",               limit: 255
  end

  add_index "degrees", ["degree_category_id"], name: "index_degrees_on_degree_category_id", using: :btree
  add_index "degrees", ["department_id"], name: "index_degrees_on_department_id", using: :btree
  add_index "degrees", ["slug"], name: "index_degrees_on_slug", using: :btree
  add_index "degrees", ["unit_type_id"], name: "index_degrees_on_unit_type_id", using: :btree

  create_table "departments", force: :cascade do |t|
    t.integer  "unit_type_id", limit: 4
    t.string   "name",         limit: 255
    t.string   "phone",        limit: 255
    t.string   "fax",          limit: 255
    t.string   "office",       limit: 255
    t.integer  "building_id",  limit: 4
    t.string   "po_box",       limit: 255
    t.integer  "user_id",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "slug",         limit: 255
    t.string   "url",          limit: 255
    t.string   "header_image", limit: 255
  end

  add_index "departments", ["building_id"], name: "index_departments_on_building_id", using: :btree
  add_index "departments", ["slug"], name: "index_departments_on_slug", using: :btree
  add_index "departments", ["unit_type_id"], name: "index_departments_on_unit_type_id", using: :btree

  create_table "departments_users", id: false, force: :cascade do |t|
    t.integer "user_id",       limit: 4
    t.integer "department_id", limit: 4
  end

  add_index "departments_users", ["department_id"], name: "index_departments_users_on_department_id", using: :btree
  add_index "departments_users", ["user_id"], name: "index_departments_users_on_user_id", using: :btree

  create_table "digital_measures", force: :cascade do |t|
    t.string   "department", limit: 255
    t.string   "fname",      limit: 255
    t.string   "lname",      limit: 255
    t.string   "endpos",     limit: 255
    t.string   "email",      limit: 255
    t.string   "rank",       limit: 255
    t.string   "dep",        limit: 255
    t.string   "building",   limit: 255
    t.string   "box_number", limit: 255
    t.string   "ophone",     limit: 255
    t.string   "dphone",     limit: 255
    t.string   "fax",        limit: 255
    t.string   "gender",     limit: 255
    t.string   "citizen",    limit: 255
    t.string   "srank",      limit: 255
    t.string   "dtm_hire",   limit: 255
    t.string   "dty_hire",   limit: 255
    t.string   "ac_year",    limit: 255
    t.string   "tenure",     limit: 255
    t.string   "employee",   limit: 255
    t.string   "graduate",   limit: 255
    t.string   "aacsbqual",  limit: 255
    t.string   "aacsbsuff",  limit: 255
    t.string   "fte",        limit: 255
    t.string   "npresp",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "email_newsletter_subscriptions", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "embas", force: :cascade do |t|
    t.integer  "unit_type_id", limit: 4
    t.string   "name",         limit: 255
    t.string   "slug",         limit: 255
    t.string   "phone",        limit: 255
    t.string   "fax",          limit: 255
    t.string   "office",       limit: 255
    t.string   "po_box",       limit: 255
    t.string   "header_image", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "embas", ["unit_type_id"], name: "index_embas_on_unit_type_id", using: :btree

  create_table "employee_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "event_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "event_category_id", limit: 4
    t.string   "name",              limit: 255
    t.string   "url",               limit: 255
    t.datetime "event_date"
    t.datetime "event_end_date"
    t.string   "short_desc",        limit: 255
    t.string   "desc",              limit: 255
    t.boolean  "status"
    t.string   "google_event_id",   limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "event_photo",       limit: 255
    t.integer  "user_id",           limit: 4
    t.boolean  "featured"
    t.string   "location",          limit: 255
    t.datetime "event_start_time"
  end

  add_index "events", ["event_category_id"], name: "index_events_on_event_category_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "expertises", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "experts", force: :cascade do |t|
    t.integer  "profile_id",   limit: 4
    t.integer  "expertise_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",      limit: 4
  end

  add_index "experts", ["expertise_id"], name: "index_experts_on_expertise_id", using: :btree
  add_index "experts", ["profile_id"], name: "index_experts_on_profile_id", using: :btree
  add_index "experts", ["user_id"], name: "index_experts_on_user_id", using: :btree

  create_table "faqs", force: :cascade do |t|
    t.integer  "department_id", limit: 4
    t.string   "title",         limit: 255
    t.string   "desc",          limit: 255
    t.boolean  "status"
    t.integer  "priority",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "faqs", ["department_id"], name: "index_faqs_on_department_id", using: :btree

  create_table "footer_layouts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "desc",       limit: 65535
    t.boolean  "status"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "forecasts", force: :cascade do |t|
    t.float    "lat",        limit: 24
    t.float    "lng",        limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",   limit: 4,   null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "fullslides", force: :cascade do |t|
    t.integer  "section_id",        limit: 4
    t.integer  "priority",          limit: 4
    t.string   "title",             limit: 255
    t.string   "desc",              limit: 255
    t.string   "video_url",         limit: 255
    t.string   "full_slider_image", limit: 255
    t.boolean  "status"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "fullslides", ["section_id"], name: "index_fullslides_on_section_id", using: :btree

  create_table "galleries", force: :cascade do |t|
    t.integer  "page_id",    limit: 4
    t.integer  "priority",   limit: 4
    t.string   "image",      limit: 255
    t.boolean  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "title",      limit: 255
    t.string   "img_alt",    limit: 255
    t.integer  "section_id", limit: 4
  end

  add_index "galleries", ["page_id"], name: "index_galleries_on_page_id", using: :btree
  add_index "galleries", ["section_id"], name: "index_galleries_on_section_id", using: :btree

  create_table "grad_users", force: :cascade do |t|
    t.string   "username",               limit: 255, default: "", null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "grad_users", ["reset_password_token"], name: "index_grad_users_on_reset_password_token", unique: true, using: :btree
  add_index "grad_users", ["username"], name: "index_grad_users_on_username", unique: true, using: :btree

  create_table "graduate_profiles", force: :cascade do |t|
    t.string   "first_name",        limit: 255
    t.string   "middle_initial",    limit: 255
    t.string   "last_name",         limit: 255
    t.string   "nickname",          limit: 255
    t.string   "email",             limit: 255
    t.string   "phone",             limit: 255
    t.string   "hometown",          limit: 255
    t.string   "candidate_type",    limit: 255
    t.string   "grad_class",        limit: 255
    t.string   "ug_school",         limit: 255
    t.string   "ug_year",           limit: 255
    t.text     "work_experience",   limit: 65535
    t.text     "activities_honors", limit: 65535
    t.text     "internship",        limit: 65535
    t.text     "cskills",           limit: 65535
    t.string   "avatar",            limit: 255
    t.string   "cv",                limit: 255
    t.boolean  "status"
    t.boolean  "registered"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "homepage_carousels", force: :cascade do |t|
    t.string  "title",         limit: 255
    t.text    "body",          limit: 65535
    t.string  "image",         limit: 255
    t.integer "priority",      limit: 4
    t.string  "video",         limit: 255
    t.string  "url",           limit: 255
    t.boolean "external_link"
    t.boolean "is_published"
  end

  create_table "homepage_section_contents", force: :cascade do |t|
    t.integer  "priority",             limit: 4
    t.string   "title",                limit: 255
    t.text     "body",                 limit: 65535
    t.boolean  "is_published"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "background_image",     limit: 255
    t.string   "background_style",     limit: 255
    t.boolean  "bg_image_option"
    t.string   "bg_image",             limit: 255
    t.integer  "background_option_id", limit: 4
    t.boolean  "display_title"
  end

  add_index "homepage_section_contents", ["background_option_id"], name: "index_homepage_section_contents_on_background_option_id", using: :btree

  create_table "iconboxes", force: :cascade do |t|
    t.integer  "page_id",       limit: 4
    t.integer  "priority",      limit: 4
    t.string   "icon",          limit: 255
    t.string   "title",         limit: 255
    t.string   "desc",          limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "status"
    t.integer  "department_id", limit: 4
    t.integer  "section_id",    limit: 4
  end

  add_index "iconboxes", ["department_id"], name: "index_iconboxes_on_department_id", using: :btree
  add_index "iconboxes", ["page_id"], name: "index_iconboxes_on_page_id", using: :btree
  add_index "iconboxes", ["section_id"], name: "index_iconboxes_on_section_id", using: :btree

  create_table "imageboxes", force: :cascade do |t|
    t.integer  "page_id",       limit: 4
    t.integer  "priority",      limit: 4
    t.string   "image",         limit: 255
    t.string   "title",         limit: 255
    t.string   "desc",          limit: 255
    t.string   "url",           limit: 255
    t.string   "target",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "layout",        limit: 4
    t.integer  "department_id", limit: 4
    t.integer  "section_id",    limit: 4
  end

  add_index "imageboxes", ["department_id"], name: "index_imageboxes_on_department_id", using: :btree
  add_index "imageboxes", ["page_id"], name: "index_imageboxes_on_page_id", using: :btree
  add_index "imageboxes", ["section_id"], name: "index_imageboxes_on_section_id", using: :btree

  create_table "layers", force: :cascade do |t|
    t.integer  "page_id",    limit: 4
    t.string   "title",      limit: 255
    t.integer  "position",   limit: 4
    t.text     "desc",       limit: 65535
    t.boolean  "status"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "layers", ["page_id"], name: "index_layers_on_page_id", using: :btree

  create_table "lift_courses", force: :cascade do |t|
    t.string   "session",          limit: 255
    t.string   "title",            limit: 255
    t.text     "description",      limit: 65535
    t.string   "location",         limit: 255
    t.string   "location_url",     limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.date     "start_date"
    t.integer  "meeting_day",      limit: 4
    t.string   "meeting_time",     limit: 255
    t.integer  "seats",            limit: 4
    t.integer  "status",           limit: 4
    t.date     "end_date"
    t.integer  "lift_location_id", limit: 4
  end

  add_index "lift_courses", ["lift_location_id"], name: "index_lift_courses_on_lift_location_id", using: :btree

  create_table "lift_courses_lift_locations", force: :cascade do |t|
    t.integer "lift_course_id",   limit: 4
    t.integer "lift_location_id", limit: 4
  end

  add_index "lift_courses_lift_locations", ["lift_course_id"], name: "index_lift_courses_lift_locations_on_lift_course_id", using: :btree
  add_index "lift_courses_lift_locations", ["lift_location_id"], name: "index_lift_courses_lift_locations_on_lift_location_id", using: :btree

  create_table "lift_instructors", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "email",          limit: 255
    t.string   "phone",          limit: 255
    t.integer  "lift_course_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "lift_locations", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "address",        limit: 255
    t.string   "map_url",        limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "lift_course_id", limit: 4
  end

  add_index "lift_locations", ["lift_course_id"], name: "index_lift_locations_on_lift_course_id", using: :btree

  create_table "lift_registrations", force: :cascade do |t|
    t.integer  "lift_course_id",     limit: 4
    t.integer  "lift_student_id",    limit: 4
    t.integer  "lift_instructor_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "lift_registrations", ["lift_course_id"], name: "index_lift_registrations_on_lift_course_id", using: :btree
  add_index "lift_registrations", ["lift_instructor_id"], name: "index_lift_registrations_on_lift_instructor_id", using: :btree
  add_index "lift_registrations", ["lift_student_id"], name: "index_lift_registrations_on_lift_student_id", using: :btree

  create_table "lift_sessions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "lift_students", force: :cascade do |t|
    t.string   "first_name",         limit: 255
    t.string   "last_name",          limit: 255
    t.string   "email",              limit: 255
    t.integer  "lift_course_id",     limit: 4
    t.integer  "lift_instructor_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "lift_students", ["lift_course_id"], name: "index_lift_students_on_lift_course_id", using: :btree
  add_index "lift_students", ["lift_instructor_id"], name: "index_lift_students_on_lift_instructor_id", using: :btree

  create_table "listgroups", force: :cascade do |t|
    t.integer  "page_id",    limit: 4
    t.integer  "priority",   limit: 4
    t.string   "title",      limit: 255
    t.text     "desc",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.boolean  "status"
    t.integer  "section_id", limit: 4
  end

  add_index "listgroups", ["page_id"], name: "index_listgroups_on_page_id", using: :btree
  add_index "listgroups", ["section_id"], name: "index_listgroups_on_section_id", using: :btree

  create_table "majors", force: :cascade do |t|
    t.integer  "unit_type_id", limit: 4
    t.string   "name",         limit: 255
    t.string   "slug",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "majors", ["unit_type_id"], name: "index_majors_on_unit_type_id", using: :btree

  create_table "manderson_profiles", force: :cascade do |t|
    t.string   "first_name",              limit: 255
    t.string   "middle_initial",          limit: 255
    t.string   "last_name",               limit: 255
    t.string   "nickname",                limit: 255
    t.string   "email",                   limit: 255
    t.string   "phone",                   limit: 255
    t.string   "hometown",                limit: 255
    t.integer  "candidate_type",          limit: 4
    t.string   "ug_school",               limit: 255
    t.string   "ug_degree",               limit: 255
    t.string   "ug_year",                 limit: 255
    t.text     "work_experience",         limit: 65535
    t.text     "activities_honors",       limit: 65535
    t.text     "internship",              limit: 65535
    t.text     "cskills",                 limit: 65535
    t.string   "avatar",                  limit: 255
    t.string   "cv_link",                 limit: 255
    t.boolean  "status"
    t.boolean  "registered"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "grad_class",              limit: 4
    t.string   "linkedin",                limit: 255
    t.string   "fb",                      limit: 255
    t.string   "favorite_book",           limit: 255
    t.string   "favorite_quote",          limit: 255
    t.string   "three_word_description",  limit: 255
    t.text     "something_unique",        limit: 65535
    t.string   "manderson_profile_photo", limit: 255
    t.string   "manderson_profile_cv",    limit: 255
    t.text     "volunteerism",            limit: 65535
  end

  create_table "manderson_visitors", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.string   "reason_for_visit",  limit: 255
    t.string   "visitor_type",      limit: 255
    t.string   "visitor_cwid",      limit: 255
    t.string   "visitor_name",      limit: 255
    t.string   "visitor_email",     limit: 255
    t.string   "visitor_grad_year", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "manderson_visitors", ["user_id"], name: "index_manderson_visitors_on_user_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.text     "body",            limit: 65535
    t.integer  "conversation_id", limit: 4
    t.integer  "user_id",         limit: 4
    t.boolean  "read",                          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "news_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "news_sliders", force: :cascade do |t|
    t.integer  "priority",     limit: 4
    t.string   "title",        limit: 255
    t.string   "body",         limit: 255
    t.string   "full_slide",   limit: 255
    t.string   "url",          limit: 255
    t.boolean  "is_published"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "newsletters", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "layout",     limit: 255
    t.string   "desc",       limit: 255
    t.boolean  "approved"
    t.boolean  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "desc",       limit: 65535
    t.string   "himage",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "page_relations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title",            limit: 255
    t.string   "pagehead",         limit: 255
    t.string   "page_url",         limit: 255
    t.string   "external_url",     limit: 255
    t.string   "short_desc",       limit: 255
    t.text     "desc",             limit: 65535
    t.string   "meta_title",       limit: 255
    t.string   "meta_keyword",     limit: 255
    t.string   "meta_description", limit: 255
    t.boolean  "status"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "parent_id",        limit: 4
    t.integer  "position",         limit: 4
    t.integer  "priority",         limit: 4
    t.string   "slug",             limit: 255
    t.string   "header_image",     limit: 255
    t.integer  "department_id",    limit: 4
  end

  add_index "pages", ["department_id"], name: "index_pages_on_department_id", using: :btree
  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true, using: :btree

  create_table "phd_students", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "bio",        limit: 255
    t.string   "email",      limit: 255
    t.string   "descriptor", limit: 255
    t.string   "honors",     limit: 255
    t.string   "photo",      limit: 255
    t.integer  "phd_id",     limit: 4
    t.string   "cv",         limit: 255
    t.string   "jmpaper",    limit: 255
    t.boolean  "status"
    t.string   "pubfile",    limit: 255
    t.string   "cvfile",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "department_id",        limit: 4
    t.integer  "designation",          limit: 4
    t.string   "name",                 limit: 255
    t.string   "title",                limit: 255
    t.string   "address",              limit: 255
    t.string   "phone",                limit: 255
    t.string   "email",                limit: 255
    t.string   "profile_photo",        limit: 255
    t.string   "current_research",     limit: 255
    t.string   "education",            limit: 255
    t.string   "achievements",         limit: 255
    t.text     "selected_publication", limit: 65535
    t.boolean  "status"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "slug",                 limit: 255
    t.boolean  "elevator"
    t.string   "first_name",           limit: 255
    t.string   "last_name",            limit: 255
    t.string   "nickname",             limit: 255
    t.integer  "user_id",              limit: 4
  end

  add_index "profiles", ["department_id"], name: "index_profiles_on_department_id", using: :btree

  create_table "programs", force: :cascade do |t|
    t.integer  "unit_type_id", limit: 4
    t.string   "name",         limit: 255
    t.string   "slug",         limit: 255
    t.integer  "building_id",  limit: 4
    t.string   "phone",        limit: 255
    t.string   "fax",          limit: 255
    t.string   "office",       limit: 255
    t.string   "po_box",       limit: 255
    t.string   "header_image", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",      limit: 4
  end

  add_index "programs", ["building_id"], name: "index_programs_on_building_id", using: :btree
  add_index "programs", ["unit_type_id"], name: "index_programs_on_unit_type_id", using: :btree
  add_index "programs", ["user_id"], name: "index_programs_on_user_id", using: :btree

  create_table "programs_users", id: false, force: :cascade do |t|
    t.integer "program_id", limit: 4
    t.integer "user_id",    limit: 4
  end

  add_index "programs_users", ["program_id", "user_id"], name: "index_programs_users_on_program_id_and_user_id", using: :btree

  create_table "quotes", force: :cascade do |t|
    t.text     "body",       limit: 65535
    t.string   "author",     limit: 255
    t.integer  "order",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "search_results", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.string   "title",      limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "search_results", ["user_id"], name: "index_search_results_on_user_id", using: :btree

  create_table "sections", force: :cascade do |t|
    t.integer  "page_id",    limit: 4
    t.integer  "position",   limit: 4
    t.string   "title",      limit: 255
    t.text     "desc",       limit: 65535
    t.boolean  "status"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "slug",       limit: 255
  end

  add_index "sections", ["page_id"], name: "index_sections_on_page_id", using: :btree

  create_table "site_settings", force: :cascade do |t|
    t.string   "project_title",        limit: 255
    t.string   "site_url",             limit: 255
    t.string   "store_url",            limit: 255
    t.integer  "records_per_page",     limit: 4
    t.string   "contact_email",        limit: 255
    t.string   "social_facebook_link", limit: 255
    t.string   "social_twitter_link",  limit: 255
    t.string   "social_linkedin_link", limit: 255
    t.string   "social_snapchat_link", limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",     limit: 4
    t.integer  "article_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "taggings", ["article_id"], name: "index_taggings_on_article_id", using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "texts", force: :cascade do |t|
    t.integer  "section_id", limit: 4
    t.integer  "priority",   limit: 4
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.boolean  "status"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "position",   limit: 4
  end

  add_index "texts", ["section_id"], name: "index_texts_on_section_id", using: :btree

  create_table "timelines", force: :cascade do |t|
    t.integer  "page_id",       limit: 4
    t.date     "event_date"
    t.string   "event_title",   limit: 255
    t.text     "event_content", limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "status"
    t.integer  "department_id", limit: 4
    t.integer  "section_id",    limit: 4
  end

  add_index "timelines", ["department_id"], name: "index_timelines_on_department_id", using: :btree
  add_index "timelines", ["page_id"], name: "index_timelines_on_page_id", using: :btree
  add_index "timelines", ["section_id"], name: "index_timelines_on_section_id", using: :btree

  create_table "unit_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "url",        limit: 255
    t.string   "slug",       limit: 255
  end

  add_index "unit_types", ["slug"], name: "index_unit_types_on_slug", using: :btree

  create_table "units", force: :cascade do |t|
    t.integer  "unit_type_id", limit: 4
    t.string   "name",         limit: 255
    t.string   "overview",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "units", ["unit_type_id"], name: "index_units_on_unit_type_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",               limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "slug",                   limit: 255
    t.integer  "department_id",          limit: 4
    t.integer  "employee_type",          limit: 4
    t.string   "email",                  limit: 255
    t.string   "middle_name",            limit: 255
    t.string   "suffix",                 limit: 255
    t.string   "nickname",               limit: 255
    t.string   "title",                  limit: 255
    t.string   "abbreviated_title",      limit: 255
    t.string   "po_box",                 limit: 255
    t.integer  "building_id",            limit: 4
    t.string   "phone",                  limit: 255
    t.string   "profile_photo",          limit: 255
    t.string   "cv",                     limit: 255
    t.string   "website",                limit: 255
    t.string   "google_scholar",         limit: 255
    t.text     "current_research",       limit: 65535
    t.text     "education",              limit: 65535
    t.text     "achievements",           limit: 65535
    t.text     "selected_publications",  limit: 65535
    t.integer  "supervisor",             limit: 4
    t.string   "programs",               limit: 255
    t.boolean  "show_elevator"
    t.boolean  "show_title"
    t.boolean  "show_office"
    t.boolean  "show_department"
    t.boolean  "status"
    t.boolean  "mark_for_deletion"
    t.string   "office",                 limit: 255
    t.string   "fullname",               limit: 255
  end

  add_index "users", ["building_id"], name: "fk_rails_6a7f33726f", using: :btree
  add_index "users", ["department_id"], name: "fk_rails_f29bf9cdf2", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "role_id", limit: 4
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "videos", force: :cascade do |t|
    t.integer "section_id", limit: 4
    t.string  "title",      limit: 255
    t.string  "video_file", limit: 255
    t.string  "url",        limit: 255
    t.boolean "status"
    t.integer "position",   limit: 4
  end

  add_index "videos", ["section_id"], name: "index_videos_on_section_id", using: :btree

  add_foreign_key "accordions", "departments"
  add_foreign_key "accordions", "pages"
  add_foreign_key "accordions", "sections"
  add_foreign_key "article_news_categories", "articles"
  add_foreign_key "article_news_categories", "news_categories"
  add_foreign_key "articles", "news_categories"
  add_foreign_key "articles", "users"
  add_foreign_key "calltoactions", "pages"
  add_foreign_key "calltoactions", "sections"
  add_foreign_key "carousels", "departments"
  add_foreign_key "carousels", "pages"
  add_foreign_key "carousels", "sections"
  add_foreign_key "ces_attendees", "ces_event_reservations"
  add_foreign_key "ces_attendees", "ces_events"
  add_foreign_key "ces_event_reservations", "ces_events"
  add_foreign_key "college_events", "departments"
  add_foreign_key "contacts", "unit_types"
  add_foreign_key "course_categories", "departments"
  add_foreign_key "degree_categories", "departments"
  add_foreign_key "degree_categories", "unit_types"
  add_foreign_key "degrees", "departments"
  add_foreign_key "degrees", "unit_types"
  add_foreign_key "departments", "buildings"
  add_foreign_key "departments", "unit_types"
  add_foreign_key "embas", "unit_types"
  add_foreign_key "events", "event_categories"
  add_foreign_key "events", "users"
  add_foreign_key "experts", "expertises"
  add_foreign_key "experts", "profiles"
  add_foreign_key "faqs", "departments"
  add_foreign_key "fullslides", "sections"
  add_foreign_key "galleries", "pages"
  add_foreign_key "galleries", "sections"
  add_foreign_key "homepage_section_contents", "background_options"
  add_foreign_key "iconboxes", "departments"
  add_foreign_key "iconboxes", "pages"
  add_foreign_key "iconboxes", "sections"
  add_foreign_key "imageboxes", "departments"
  add_foreign_key "imageboxes", "pages"
  add_foreign_key "imageboxes", "sections"
  add_foreign_key "layers", "pages"
  add_foreign_key "lift_courses", "lift_locations"
  add_foreign_key "lift_locations", "lift_courses"
  add_foreign_key "lift_registrations", "lift_courses"
  add_foreign_key "lift_registrations", "lift_instructors"
  add_foreign_key "lift_registrations", "lift_students"
  add_foreign_key "lift_students", "lift_courses"
  add_foreign_key "lift_students", "lift_instructors"
  add_foreign_key "listgroups", "pages"
  add_foreign_key "listgroups", "sections"
  add_foreign_key "majors", "unit_types"
  add_foreign_key "manderson_visitors", "users"
  add_foreign_key "pages", "departments"
  add_foreign_key "profiles", "departments"
  add_foreign_key "programs", "buildings"
  add_foreign_key "programs", "unit_types"
  add_foreign_key "search_results", "users"
  add_foreign_key "sections", "pages"
  add_foreign_key "taggings", "articles"
  add_foreign_key "taggings", "tags"
  add_foreign_key "texts", "sections"
  add_foreign_key "timelines", "departments"
  add_foreign_key "timelines", "pages"
  add_foreign_key "timelines", "sections"
  add_foreign_key "units", "unit_types"
  add_foreign_key "users", "buildings"
  add_foreign_key "users", "departments"
  add_foreign_key "videos", "sections"
end
