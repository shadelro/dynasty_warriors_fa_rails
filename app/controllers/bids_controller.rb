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
      flash[:error] = 'Bid could not be made'
    end
    redirect_to league_players_path(params[:league_id])
  end

  def edit
    @bid = Bid.find_by(id: params[:id], team: params[:team_id])
    authorize @bid

    @player = @bid.player
  end

  def update
    bid = Bid.find_by(id: params[:id], team: params[:team_id])
    authorize bid

    bid.amount = params[:amount]

    if bid.save
      flash[:notice] = 'Bid Changed'
    else
      flash[:notice] = 'Bid could not be updated'
    end
    redirect_to league_players_path(params[:league_id])
  end

  def destroy
    bid = Bid.find_by(id: params[:id], team: params[:team_id])
    authorize bid

    if bid.destroy
      flash[:notice] = 'Bid Cancelled'
    else
      flash[:error] = 'Bid could not be cancelled'
    end
    redirect_to league_players_path(params[:league_id])
  end
end
