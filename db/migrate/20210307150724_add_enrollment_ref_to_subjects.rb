class AddEnrollmentRefToSubjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :subjects, :enrollment, null: false, foreign_key: true
  end
end
