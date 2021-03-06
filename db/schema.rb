# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_30_231517) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bundles", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "product_id", null: false
    t.bigint "packaging_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["packaging_id"], name: "index_bundles_on_packaging_id"
    t.index ["product_id"], name: "index_bundles_on_product_id"
  end

  create_table "form_of_payments", force: :cascade do |t|
    t.string "name"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.bigint "user_id", null: false
    t.bigint "bundle_id", null: false
    t.bigint "shipping_id", null: false
    t.bigint "form_of_payment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bundle_id"], name: "index_orders_on_bundle_id"
    t.index ["form_of_payment_id"], name: "index_orders_on_form_of_payment_id"
    t.index ["shipping_id"], name: "index_orders_on_shipping_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "packaging_components", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "packaging_id", null: false
    t.bigint "raw_material_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["packaging_id"], name: "index_packaging_components_on_packaging_id"
    t.index ["raw_material_id"], name: "index_packaging_components_on_raw_material_id"
  end

  create_table "packagings", force: :cascade do |t|
    t.string "name"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_ingredients", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "raw_material_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_ingredients_on_product_id"
    t.index ["raw_material_id"], name: "index_product_ingredients_on_raw_material_id"
  end

  create_table "productions", force: :cascade do |t|
    t.datetime "date"
    t.integer "quantity"
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_productions_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "weight"
    t.float "unit_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.datetime "date"
    t.float "cost"
    t.string "invoice"
    t.float "quantity"
    t.bigint "raw_material_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["raw_material_id"], name: "index_purchases_on_raw_material_id"
  end

  create_table "raw_materials", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shippings", force: :cascade do |t|
    t.string "name"
    t.string "supplier"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bundles", "packagings"
  add_foreign_key "bundles", "products"
  add_foreign_key "orders", "bundles"
  add_foreign_key "orders", "form_of_payments"
  add_foreign_key "orders", "shippings"
  add_foreign_key "orders", "users"
  add_foreign_key "packaging_components", "packagings"
  add_foreign_key "packaging_components", "raw_materials"
  add_foreign_key "product_ingredients", "products"
  add_foreign_key "product_ingredients", "raw_materials"
  add_foreign_key "productions", "products"
  add_foreign_key "purchases", "raw_materials"
end
