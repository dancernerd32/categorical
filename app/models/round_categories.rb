class RoundCategories < ApplicationRecord
  belongs_to :round
  belongs_to :category
end