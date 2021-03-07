class Enrollment < ApplicationRecord
  has_many :school_years, dependent: :destroy 
  has_many :students, through: :school_years, dependent: :destroy
  has_many :exams
  has_many :subjects
end
