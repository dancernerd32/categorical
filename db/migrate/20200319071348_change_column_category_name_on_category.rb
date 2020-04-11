class ChangeColumnCategoryNameOnCategory < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:categories, :category_name, false)
  end
end
