class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.references :teacher, foreign_key: true
      t.string :subjectName
      t.decimal :coefficient

      t.timestamps
    end
  end
end
