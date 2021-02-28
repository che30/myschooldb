class Teacher < ApplicationRecord
  has_many :subjects, dependent: :destroy
end
