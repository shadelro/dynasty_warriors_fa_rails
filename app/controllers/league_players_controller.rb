class LeaguePlayersController < ApplicationController
  def index
    @players = Player.all.sort_by(&:last_name)
  end

  def show
    @player = Player.find_by(id: params[:id])
    @my_team = current_user.team_for_league(params[:league_id])
    @my_bid = Bid.find_by(player_id: params[:id], team: @my_team)
  end
end
