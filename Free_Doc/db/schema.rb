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

ActiveRecord::Schema[7.1].define(version: 2024_02_08_132016) do
  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id", null: false
    t.integer "doctor_id", null: false
    t.integer "patient_id", null: false
    t.index ["city_id"], name: "index_appointments_on_city_id"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "c_cities", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "speciality"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.index ["city_id"], name: "index_doctors_on_city_id"
  end

  create_table "doctors_specialties", id: false, force: :cascade do |t|
    t.integer "doctor_id", null: false
    t.integer "specialty_id", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "c_city_id"
    t.index ["c_city_id"], name: "index_dogs_on_c_city_id"
  end

  create_table "dogsitters", force: :cascade do |t|
    t.string "name"
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "c_city_id"
    t.index ["c_city_id"], name: "index_dogsitters_on_c_city_id"
    t.index ["city_id"], name: "index_dogsitters_on_city_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "doctor_id"
    t.index ["doctor_id"], name: "index_specialities_on_doctor_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.datetime "date"
    t.integer "dogsitter_id", null: false
    t.integer "dog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_strolls_on_dog_id"
    t.index ["dogsitter_id"], name: "index_strolls_on_dogsitter_id"
  end

  add_foreign_key "appointments", "cities"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "doctors", "cities"
  add_foreign_key "dogs", "c_cities"
  add_foreign_key "dogsitters", "c_cities"
  add_foreign_key "dogsitters", "cities"
  add_foreign_key "specialities", "doctors"
  add_foreign_key "strolls", "dogs"
  add_foreign_key "strolls", "dogsitters"
end
