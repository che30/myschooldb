class AddDateToExam < ActiveRecord::Migration[6.1]
  def change
    add_column :exams, :date, :string, :default => Date.today.year
  end
end
