class AddCountryToMovies < ActiveRecord::Migration[8.1]
  def change
    add_column :movies, :country, :string
  end
end
