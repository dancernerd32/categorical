class Game < ApplicationRecord
  has_many :rounds
  has_many :categories, through: :rounds

  after_create :create_rounds

  def categories_needed
    @categories_needed ||= round_count * 12
  end

  def create_rounds
    raise "Add more categories to start the game" if categories_needed > Category.count

    alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]

    categories = Category.limit(categories_needed).order("RANDOM()").to_a
    byebug
    round_count.times do |x|
      byebug
      round = Round.new(game_id: self.id, letter: alphabet[rand(0..25)])
      round.save!
      12.times do
        round.categories << categories.delete_at(0)
      end
    end
  end
end
