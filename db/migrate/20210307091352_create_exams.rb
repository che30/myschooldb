class CreateExams < ActiveRecord::Migration[6.1]
  def change
    create_table :exams do |t|
      t.references :subject, null: false, foreign_key: true
      t.references :enrollment, null: false, foreign_key: true
      t.decimal :mark
      t.date :date
      t.string :name

      t.timestamps
    end
  end
end
