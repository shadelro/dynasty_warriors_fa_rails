class BidsController < ApplicationController
  def new
    @player = Player.find(bid_params[:player_id])
  end

  def create
    Bid.create(team_id: bid_params[:team_id], player_id: bid_params[:player_id], amount: bid_params[:amount])

    flash[:notice] = 'Bid Made'
    redirect_to league_players_path(bid_params[:league_id])
  end

  def edit
    @bid = Bid.find_by(id: params[:id], team: bid_params[:team_id])
    @player = @bid.player
  end

  def update
    bid = Bid.find_by(id: params[:id], team: bid_params[:team_id])
    bid.amount = bid_params[:amount]
    bid.save

    flash[:notice] = 'Bid Changed'
    redirect_to league_players_path(bid_params[:league_id])
  end

  def destroy
    Bid.find_by(id: bid_params[:id], team: bid_params[:team_id]).destroy

    flash[:notice] = 'Bid Cancelled'
    redirect_to league_players_path(bid_params[:league_id])
  end

  private

  def bid_params
    params.permit(:league_id, :team_id, :id, :player_id, :amount)
  end
end
