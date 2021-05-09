class AddWatchToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :watch, :string
  end
end
