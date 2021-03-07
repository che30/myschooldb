class Exam < ApplicationRecord
  belongs_to :subject
  belongs_to :enrollment
end
