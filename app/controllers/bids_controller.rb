class BidsController < ApplicationController
  after_action :verify_authorized

  def new
    bid = Bid.new(team_id: params[:team_id], player_id: params[:player_id])
    authorize bid

    @player = Player.find(params[:player_id])
  end

  def create
    bid = Bid.new(team_id: params[:team_id], player_id: params[:player_id], amount: params[:amount])
    authorize bid

    if bid.save
      flash[:notice] = 'Bid Made'
    else
      flash[:error] = 'Bid could not be made: ' << bid.errors.full_messages.join(', ')
    end
    redirect_to league_players_path(params[:league_id])
  end
end
