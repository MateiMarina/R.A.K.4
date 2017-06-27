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

ActiveRecord::Schema.define(version: 20170627135818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: :cascade do |t|
    t.integer  "asset_id"
    t.string   "asset_name"
    t.string   "asset_type"
    t.string   "asset_owner"
    t.string   "country"
    t.string   "current_manager"
    t.string   "previous_manager"
    t.string   "asset_specifications"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "contract_id"
    t.string   "contract_status"
    t.string   "country"
    t.integer  "purchaser_id"
    t.integer  "operating_company_id"
    t.string   "service"
    t.integer  "company_id"
    t.string   "services_rendered"
    t.string   "contract_value"
    t.integer  "award_year"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "contract_name"
  end

  create_table "items", force: :cascade do |t|
    t.integer  "asset_id"
    t.string   "asset_name"
    t.string   "asset_type"
    t.string   "asset_owner"
    t.string   "country"
    t.string   "current_manager"
    t.string   "previous_manager"
    t.string   "asset_specifications"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "country"
    t.string   "supra_region"
    t.string   "region"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "offshores", force: :cascade do |t|
    t.integer  "field_id"
    t.string   "field_name"
    t.string   "status"
    t.string   "country"
    t.string   "original_operator"
    t.string   "stakeholders"
    t.text     "discovery_yr"
    t.string   "resource"
    t.text     "field_size_boe"
    t.text     "first_production_yr"
    t.text     "estimated_end_production"
    t.text     "field_life_yrs"
    t.text     "water_depth"
    t.text     "capex_usd"
    t.text     "distance_to_shore_km"
    t.text     "no_manifolds"
    t.text     "no_installed_trees"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "operating_company_id"
  end

  create_table "operatings", force: :cascade do |t|
    t.integer  "operating_company_id"
    t.string   "operating_company_name"
    t.text     "country"
    t.string   "address"
    t.integer  "year_formed"
    t.string   "other_operational_countries"
    t.string   "about_company"
    t.string   "current_focus"
    t.string   "incumbent_irm_contractor"
    t.string   "irm_frame_agreements"
    t.text     "estimated_irm_budgets"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "project_title"
    t.string   "about_project"
    t.string   "resource"
    t.string   "status"
    t.text     "estimated_first_production"
    t.string   "country"
    t.string   "region"
    t.string   "water_depth_m"
    t.text     "capex_usd"
    t.text     "distance_to_shore"
    t.text     "development_concept"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "operating_company_id"
    t.integer  "field_id"
  end

  create_table "purchasers", force: :cascade do |t|
    t.integer  "purchaser_id"
    t.string   "purchaser_name"
    t.string   "company_type"
    t.string   "services_rendered"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "scraps", force: :cascade do |t|
    t.integer  "scrap_id"
    t.text     "title"
    t.text     "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "service_company_id"
    t.string   "service_company_name"
    t.text     "country"
    t.string   "address"
    t.integer  "year_formed"
    t.string   "other_operational_countries"
    t.string   "about_company"
    t.string   "current_focus"
    t.string   "services"
    t.string   "estimated_booking"
    t.text     "financial_status"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  create_table "workers", force: :cascade do |t|
    t.integer  "worker_id"
    t.string   "full_name"
    t.string   "classification"
    t.string   "company_type"
    t.text     "ak_notes"
    t.text     "current_company"
    t.string   "current_country"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
