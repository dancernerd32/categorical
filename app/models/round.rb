class Round < ApplicationRecord
  has_many :round_categories
  has_many :categories, through: :round_categories
end
