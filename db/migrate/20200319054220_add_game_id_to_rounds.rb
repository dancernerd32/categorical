class AddGameIdToRounds < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :game_id, :integer
  end
end
