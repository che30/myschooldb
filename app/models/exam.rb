class Exam < ApplicationRecord
  belongs_to :subject
  belongs_to :enrollment
  has_many :marks
end
