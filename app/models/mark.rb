class Mark < ApplicationRecord
  belongs_to :student
  belongs_to :exam
  has_many :marks
end
