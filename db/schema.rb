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

ActiveRecord::Schema.define(version: 2021_03_07_134126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_attendances_on_student_id"
    t.index ["subject_id"], name: "index_attendances_on_subject_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.string "className"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exams", force: :cascade do |t|
    t.bigint "subject_id", null: false
    t.bigint "enrollment_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "date", default: "2021"
    t.index ["enrollment_id"], name: "index_exams_on_enrollment_id"
    t.index ["subject_id"], name: "index_exams_on_subject_id"
  end

  create_table "marks", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "exam_id", null: false
    t.decimal "grade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exam_id"], name: "index_marks_on_exam_id"
    t.index ["student_id"], name: "index_marks_on_student_id"
  end

  create_table "school_years", force: :cascade do |t|
    t.bigint "enrollment_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "year", default: "2021"
    t.index ["enrollment_id"], name: "index_school_years_on_enrollment_id"
    t.index ["student_id"], name: "index_school_years_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.date "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.bigint "teacher_id"
    t.string "subjectName"
    t.decimal "coefficient"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "firstName"
    t.string "LastName"
    t.date "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "attendances", "students"
  add_foreign_key "attendances", "subjects"
  add_foreign_key "exams", "enrollments"
  add_foreign_key "exams", "subjects"
  add_foreign_key "marks", "exams"
  add_foreign_key "marks", "students"
  add_foreign_key "school_years", "enrollments"
  add_foreign_key "school_years", "students"
  add_foreign_key "subjects", "teachers"
end
