class RemoveDateFromSchoolYear < ActiveRecord::Migration[6.1]
  def change
    remove_column :school_years, :year, :date
  end
end
