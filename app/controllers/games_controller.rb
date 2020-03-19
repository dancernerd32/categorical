class GamesController < ApplicationController
  def create
    @game = Game.new(permitted_params)

    @game.save

  end
private
  def permitted_params
    params.require(:game).permit(:round_count)
  end
end
