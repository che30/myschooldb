class CreateSchoolYears < ActiveRecord::Migration[6.1]
  def change
    create_table :school_years do |t|
      t.references :enrollment, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.date :year

      t.timestamps
    end
  end
end
