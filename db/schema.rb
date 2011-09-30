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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110926191116) do

  create_table "about_us", :force => true do |t|
    t.string "header_1"
    t.text   "content_1"
    t.string "header_2"
    t.text   "content_2"
    t.string "header_3"
    t.text   "content_3"
    t.string "tag_line"
  end

  create_table "admins", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "super_user"
  end

  create_table "affiliates", :force => true do |t|
    t.string   "entity_name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.decimal  "sales_price"
    t.integer  "merchant"
    t.integer  "number_sold"
    t.decimal  "total_revenue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_contact_models", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_leads", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "company"
    t.string   "website"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string  "header_1"
    t.string  "link_1"
    t.string  "header_2"
    t.string  "link_2"
    t.string  "number"
    t.string  "address_name"
    t.string  "address_street"
    t.string  "city"
    t.string  "state"
    t.integer "zip_code"
  end

  create_table "current_deals", :force => true do |t|
  end

  create_table "customer_details", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "deal_name"
    t.string   "date_of_deal"
    t.string   "date_of_purchase"
    t.decimal  "sale_price"
    t.string   "industry"
    t.string   "affiliate_enitity_name"
    t.boolean  "gender"
    t.boolean  "home_owner"
    t.string   "interests"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers_summaries", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "number_purchased"
    t.integer  "referr_a_friend_credits"
    t.boolean  "was_referral"
    t.string   "creation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deal_details", :force => true do |t|
    t.string   "company_name"
    t.string   "merchant_name"
    t.string   "deal_name"
    t.string   "date_to_run"
    t.string   "deal_expiration_date"
    t.integer  "max_total_purchase"
    t.integer  "max_customer_purchase"
    t.decimal  "regular_price"
    t.decimal  "sale_price"
    t.text     "restrictions"
    t.text     "highlights"
    t.text     "full_detail"
    t.string   "sales_representative"
    t.integer  "phone"
    t.decimal  "teir_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "for_businesses", :force => true do |t|
    t.string   "title"
    t.string   "header"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "good_reads", :force => true do |t|
    t.string   "title"
    t.text     "post"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "how_it_works_businesses", :force => true do |t|
    t.string "main_header"
    t.text   "main_content"
    t.string "subheader_1"
    t.text   "subcontent_1"
    t.string "subheader_2"
    t.text   "subcontent_2"
    t.string "subheader_3"
    t.text   "subcontent_3"
    t.string "subheader_4"
    t.text   "subcontent_4"
    t.string "subheader_5"
    t.text   "subcontent_5"
    t.string "subheader_6"
    t.text   "subcontent_6"
  end

  create_table "how_it_works_consumers", :force => true do |t|
    t.string "header_1"
    t.text   "content_1"
    t.string "header_2"
    t.text   "content_2"
    t.string "header_3"
    t.text   "content_3"
    t.string "header_4"
    t.text   "content_4"
  end

  create_table "merchant_informations", :force => true do |t|
    t.string   "merchant_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "website"
    t.integer  "office_phone"
    t.string   "email"
    t.string   "contact_name"
    t.string   "industry"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "privacy_policies", :force => true do |t|
    t.text "content"
  end

  create_table "promotions", :force => true do |t|
    t.string   "promotion_name"
    t.string   "company_name"
    t.string   "merchant_name"
    t.string   "code"
    t.string   "start"
    t.string   "end"
    t.decimal  "discount"
    t.integer  "total_used"
    t.integer  "max_total_used"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", :force => true do |t|
    t.string   "author"
    t.string   "words_of_wisdom"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
  end

  create_table "recent_deals", :force => true do |t|
  end

  create_table "spreadsheets", :force => true do |t|
    t.string   "table"
    t.string   "csv_spreadsheet_file_name"
    t.string   "csv_spreadsheet_content_type"
    t.integer  "csv_spreadsheet_file_size"
    t.datetime "csv_spreadsheet_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms_of_services", :force => true do |t|
    t.text "content"
  end

  create_table "user_widgets", :force => true do |t|
    t.string   "useless_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "widget_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "widgets", :force => true do |t|
    t.text     "text_1"
    t.string   "title"
    t.text     "text_2"
    t.string   "bottom_title"
    t.string   "widget_image_file_name"
    t.string   "widget_image_content_type"
    t.integer  "widget_image_file_size"
    t.datetime "widget_image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "widgetable_id"
    t.string   "widgetable_type"
    t.boolean  "good_read_active"
    t.boolean  "contact_active"
    t.boolean  "about_us_active"
    t.boolean  "current_deal_active"
    t.boolean  "recent_deal_active"
    t.boolean  "privacy_policy_active"
    t.boolean  "for_business_active"
    t.boolean  "terms_of_service_active"
    t.integer  "good_read_order"
    t.integer  "contact_order"
    t.integer  "about_us_order"
    t.integer  "current_deal_order"
    t.integer  "recent_deal_order"
    t.integer  "privacy_policy_order"
    t.integer  "for_business_order"
    t.integer  "terms_of_service_order"
    t.string   "wimage_file_name"
    t.string   "wimage_content_type"
    t.integer  "wimage_file_size"
    t.datetime "wimage_updated_at"
  end

end
