class CategoriesController < ApplicationController
  def new
  end

  def create
    @category = Category.new(permitted_params)

    @category.save
  end

  private

  def permitted_params
    params.require(:category).permit(:category_name, :category_author)
  end
end
