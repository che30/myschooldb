class AddYearToSchoolYear < ActiveRecord::Migration[6.1]
  def change
    add_column :school_years, :year, :string, :default =>Date.today.year

  end
end
