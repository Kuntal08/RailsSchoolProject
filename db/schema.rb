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

ActiveRecord::Schema.define(version: 2020_08_13_182447) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
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

  create_table "ages", force: :cascade do |t|
    t.date "date_from"
    t.date "date_to"
    t.integer "age_from"
    t.integer "age_to"
    t.date "date_as"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "classe_id"
    t.index ["classe_id"], name: "index_ages_on_classe_id"
  end

  create_table "classes", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "classe"
    t.string "stage"
  end

  create_table "fees", force: :cascade do |t|
    t.integer "admission_fee"
    t.integer "annual_fee"
    t.integer "caution_money"
    t.integer "tution_fee"
    t.integer "almanac_fee"
    t.integer "total_fee"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "section_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "classe_id"
    t.index ["classe_id"], name: "index_sections_on_classe_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.integer "age"
    t.integer "academic_year"
    t.string "father_name"
    t.string "mother_name"
    t.text "address"
    t.integer "contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "classe_id"
    t.string "email"
    t.string "payment_mode"
    t.integer "amount"
    t.string "status"
    t.index ["classe_id"], name: "index_students_on_classe_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "ages", "classes", column: "classe_id"
  add_foreign_key "sections", "classes", column: "classe_id"
  add_foreign_key "students", "classes", column: "classe_id"
end
