class PlayersController < ApplicationController
  def index
    @players = Player.all.sort_by(&:last_name)
  end

  def show
    @player = Player.find(player_params[:id])
    @my_bid = Bid.find_by(player_id: player_params[:id], team: current_user.team)
  end

  private

  def player_params
    params.permit(:id)
  end
end
