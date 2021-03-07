class RemoveDateFromExam < ActiveRecord::Migration[6.1]
  def change
    remove_column :exams, :date, :date
  end
end
