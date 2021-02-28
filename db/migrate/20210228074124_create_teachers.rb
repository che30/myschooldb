class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :firstName
      t.string :LastName
      t.date :dob

      t.timestamps
    end
  end
end
