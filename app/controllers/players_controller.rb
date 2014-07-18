class PlayersController < ApplicationController
  def index
    @players = Player.all.sort_by(&:last_name)
    @positions = @players.map { |player| player.position }.uniq.sort
  end

  def show
    @player = Player.find_by(id: params[:id])
    @my_team = current_user.team_for_league(params[:league_id])
    @my_bid = Bid.find_by(player_id: params[:id], team: @my_team)
  end

  private

  def bid
    Bid.find_by(player_id: params[:id], team: @my_team) ||
      Bid.new(player_id: params[:id])
  end
end
