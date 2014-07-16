class PlayersController < ApplicationController
  def index
    @players = current_league.players
  end

  def show
    @player = Player.find_by(id: player_params[:id])
    @my_team = current_user.team_for_league(player_params[:league_id])
    @my_bid = Bid.find_by(player_id: player_params[:id], team: @my_team)
  end

  def add_remove
    @players = Player.all.sort_by(&:last_name)
  end

  private

  def player_params
    params.permit(:id, :league_id)
  end
end
