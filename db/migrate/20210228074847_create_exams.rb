class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams do |t|
      t.integer :sequence
      t.decimal :mark
      t.decimal :total
      t.decimal :average
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
