class CreateRoundCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :round_categories do |t|
      t.integer :category_id
      t.integer :round_id
      t.timestamps
    end
  end
end
