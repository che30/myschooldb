class Student < ApplicationRecord
  has_many :school_years, dependent: :destroy
  has_many :enrollments, through: :school_years, dependent: :destroy
  has_many :subjects
  has_many :attendances, dependent: :destroy
  has_many :subjects, through: :attendances
  has_many :enrollments
  has_many :marks
  def name_with_initial
    "#{firstName} #{lastName}"
  end

end
