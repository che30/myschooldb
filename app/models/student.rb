class Student < ApplicationRecord
  has_many :school_years, dependent: :destroy
  has_many :enrollments, through: :school_years, dependent: :destroy
  has_many :subjects
  has_many :attendances, dependent: :destroy
  has_many :subjects, through: :attendances
  has_many :exams, dependent: :destroy

end
