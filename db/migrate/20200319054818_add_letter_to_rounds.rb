class AddLetterToRounds < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :letter, :string
  end
end
