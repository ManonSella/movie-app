class CreateMovies < ActiveRecord::Migration[8.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.decimal :budget
      t.decimal :year
      t.decimal :rating
      t.string :description

      t.timestamps
    end
  end
end
