class AddDeadlineToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :deadline, :datetime
  end
end
