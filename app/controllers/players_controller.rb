class PlayersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(player_params[:id])
    @my_bid = Bid.find_by(player_id: player_params[:id], user_id: current_user.id)
  end

  private

  def player_params
    params.permit(:id)
  end
end
