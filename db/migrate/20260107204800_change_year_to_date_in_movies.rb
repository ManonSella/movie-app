class ChangeYearToDateInMovies < ActiveRecord::Migration[8.1]
  def change
    change_column :movies, :year, :integer
  end
end
