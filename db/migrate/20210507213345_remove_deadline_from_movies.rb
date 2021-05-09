class RemoveDeadlineFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :deadline, :date
  end
end
