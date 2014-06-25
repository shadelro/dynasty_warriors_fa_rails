class BidsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @player = Player.find(bid_params[:player_id])
  end

  def create
    Bid.create(user: current_user, player_id: bid_params[:player_id], amount: bid_params[:amount])

    flash[:notice] = 'Bid Made'
    redirect_to players_path
  end

  def edit
    @bid = Bid.find_by(id: params[:id], user_id: current_user.id)
    @player = Player.find(@bid.player_id)
  end

  def update
    @bid = Bid.find_by(id: params[:id], user_id: current_user.id)
    @bid.amount = bid_params[:amount]
    @bid.save

    flash[:notice] = 'Bid Changed'
    redirect_to players_path
  end

  def destroy
    Bid.find_by(id: bid_params[:id], user_id: current_user.id).destroy

    flash[:notice] = 'Bid Cancelled'
    redirect_to players_path
  end

  private

  def bid_params
    params.permit(:id, :player_id, :amount)
  end
end
