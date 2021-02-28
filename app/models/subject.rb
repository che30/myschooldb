class Subject < ApplicationRecord
  belongs_to :teacher, optional: true
  has_many :attendances, dependent: :destroy
  has_many :students, through: :attendances, dependent: :destroy
end
