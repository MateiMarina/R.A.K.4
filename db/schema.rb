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

ActiveRecord::Schema.define(version: 20170726234943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "company_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "company_contracts", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "contract_id"
    t.text     "from"
    t.text     "to"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_company_contracts_on_company_id", using: :btree
    t.index ["contract_id"], name: "index_company_contracts_on_contract_id", using: :btree
  end

  create_table "company_employees", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "employee_id"
    t.text     "begin"
    t.text     "end"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_company_employees_on_company_id", using: :btree
    t.index ["employee_id"], name: "index_company_employees_on_employee_id", using: :btree
  end

  create_table "company_items", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_items_on_company_id", using: :btree
    t.index ["item_id"], name: "index_company_items_on_item_id", using: :btree
  end

  create_table "company_scraps", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "scrap_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_scraps_on_company_id", using: :btree
    t.index ["scrap_id"], name: "index_company_scraps_on_scrap_id", using: :btree
  end

  create_table "contracts", force: :cascade do |t|
    t.string   "contract_name"
    t.string   "contract_status"
    t.string   "services_rendered"
    t.string   "contract_value"
    t.integer  "award_year"
    t.integer  "location_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["location_id"], name: "index_contracts_on_location_id", using: :btree
  end

  create_table "employees", force: :cascade do |t|
    t.string   "full_name"
    t.string   "current_company"
    t.string   "country"
    t.string   "position"
    t.text     "ak_notes"
    t.text     "classification"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "item_name"
    t.string   "item_type"
    t.string   "item_owner"
    t.string   "current_manager"
    t.string   "previous_manager"
    t.text     "item_specifications"
    t.integer  "location_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["location_id"], name: "index_items_on_location_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string   "country"
    t.string   "supra_region"
    t.string   "region"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "offshore_operatings", force: :cascade do |t|
    t.integer  "offshore_id"
    t.integer  "operating_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["offshore_id"], name: "index_offshore_operatings_on_offshore_id", using: :btree
    t.index ["operating_id"], name: "index_offshore_operatings_on_operating_id", using: :btree
  end

  create_table "offshore_stakeholders", force: :cascade do |t|
    t.integer  "offshore_id"
    t.integer  "stakeholder_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["offshore_id"], name: "index_offshore_stakeholders_on_offshore_id", using: :btree
    t.index ["stakeholder_id"], name: "index_offshore_stakeholders_on_stakeholder_id", using: :btree
  end

  create_table "offshores", force: :cascade do |t|
    t.string   "field_name"
    t.string   "field_status"
    t.string   "original_operator"
    t.string   "current_operator"
    t.text     "discovery_yr"
    t.text     "resource"
    t.text     "field_size_boe"
    t.text     "first_production_yr"
    t.text     "estimated_end_production"
    t.text     "field_life_yrs"
    t.text     "capex_usd"
    t.text     "distance_to_shore_km"
    t.text     "no_manifolds"
    t.text     "no_intalled_trees"
    t.integer  "location_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.decimal  "water_depth"
    t.index ["location_id"], name: "index_offshores_on_location_id", using: :btree
  end

  create_table "operating_projects", force: :cascade do |t|
    t.integer  "operating_id"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["operating_id"], name: "index_operating_projects_on_operating_id", using: :btree
    t.index ["project_id"], name: "index_operating_projects_on_project_id", using: :btree
  end

  create_table "operatings", force: :cascade do |t|
    t.string   "operating_company_name"
    t.text     "address"
    t.integer  "year_formed"
    t.string   "other_operational_countries"
    t.text     "about_company"
    t.string   "current_focus"
    t.string   "incumbent_irm_contractor"
    t.string   "irm_frame_agreements"
    t.text     "estimated_irm_budget"
    t.integer  "location_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["location_id"], name: "index_operatings_on_location_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_title"
    t.text     "about_project"
    t.string   "resource"
    t.string   "project_status"
    t.text     "estimated_first_production"
    t.text     "water_depth_m"
    t.text     "capex_usd"
    t.text     "development_concept"
    t.text     "distance_to_shore"
    t.integer  "contract_id"
    t.integer  "location_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["contract_id"], name: "index_projects_on_contract_id", using: :btree
    t.index ["location_id"], name: "index_projects_on_location_id", using: :btree
  end

  create_table "scraps", force: :cascade do |t|
    t.string   "title"
    t.text     "link"
    t.date     "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "service_company_name"
    t.text     "address"
    t.integer  "year_formed"
    t.string   "other_operational_countries"
    t.text     "about_company"
    t.string   "current_focus"
    t.string   "services"
    t.string   "estimated_booking"
    t.text     "financial_status"
    t.integer  "location_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["location_id"], name: "index_services_on_location_id", using: :btree
  end

  create_table "stakeholders", force: :cascade do |t|
    t.string   "stakeholder_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "surname"
    t.string   "company"
    t.string   "reset_digest"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  create_table "vessels", force: :cascade do |t|
    t.string   "vessel_name"
    t.string   "vessel_status"
    t.string   "country"
    t.string   "vessel_type"
    t.text     "latitude"
    t.text     "imo_no"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "company_contracts", "companies"
  add_foreign_key "company_contracts", "contracts"
  add_foreign_key "company_employees", "companies"
  add_foreign_key "company_employees", "employees"
  add_foreign_key "company_items", "companies"
  add_foreign_key "company_items", "items"
  add_foreign_key "company_scraps", "companies"
  add_foreign_key "company_scraps", "scraps"
  add_foreign_key "contracts", "locations"
  add_foreign_key "items", "locations"
  add_foreign_key "offshore_operatings", "offshores"
  add_foreign_key "offshore_operatings", "operatings"
  add_foreign_key "offshore_stakeholders", "offshores"
  add_foreign_key "offshore_stakeholders", "stakeholders"
  add_foreign_key "offshores", "locations"
  add_foreign_key "operating_projects", "operatings"
  add_foreign_key "operating_projects", "projects"
  add_foreign_key "operatings", "locations"
  add_foreign_key "projects", "contracts"
  add_foreign_key "projects", "locations"
  add_foreign_key "services", "locations"
end
