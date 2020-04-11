class AddRoundCountToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :round_count, :integer
  end
end
