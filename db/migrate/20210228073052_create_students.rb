class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :firstName
      t.string :lastName
      t.date :dob

      t.timestamps
    end
  end
end
