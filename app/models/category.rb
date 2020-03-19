class Category < ApplicationRecord
  has_many :round_categories
  has_many :rounds, through: :round_categories

  validates :category_name, presence: true
end
