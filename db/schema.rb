# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_15_122842) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: :cascade do |t|
    t.string "asset_name"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "minimum_investment"
    t.string "term"
    t.integer "payment_schedule", default: 0
    t.integer "asset_type", default: 0
    t.string "title"
    t.text "description"
    t.float "share_in_excess"
    t.float "annual_mangt_fee"
    t.float "annual_flat_expense"
    t.text "overview_description"
    t.text "overview_note"
    t.index ["user_id"], name: "index_assets_on_user_id"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "portfolio_name"
    t.bigint "asset_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "amount"
    t.boolean "payment_status", default: false
    t.boolean "paid", default: false
    t.index ["asset_id"], name: "index_portfolios_on_asset_id"
    t.index ["user_id"], name: "index_portfolios_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.decimal "amount"
    t.integer "type", default: 0
    t.integer "status", default: 0
    t.bigint "wallet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wallet_id"], name: "index_transactions_on_wallet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "mobile_no"
    t.integer "role", default: 0
  end

  create_table "wallets", force: :cascade do |t|
    t.decimal "balance"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wallets_on_user_id"
  end

  add_foreign_key "assets", "users"
  add_foreign_key "portfolios", "assets"
  add_foreign_key "portfolios", "users"
  add_foreign_key "transactions", "wallets"
  add_foreign_key "wallets", "users"
end
