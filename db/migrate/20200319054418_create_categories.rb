class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :category_name, unique: true
      t.string :category_author
      t.timestamps
    end
  end
end
