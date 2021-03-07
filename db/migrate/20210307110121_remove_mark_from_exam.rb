class RemoveMarkFromExam < ActiveRecord::Migration[6.1]
  def change
    remove_column :exams, :mark, :decimal
  end
end
