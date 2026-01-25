class AddThemeAndPictureToMovies < ActiveRecord::Migration[8.1]
  def change
    add_column :movies, :theme, :string, default: 'comedy'
    add_column :movies, :picture_file_name, :string, default: 'placeholder.png'
  end
end
