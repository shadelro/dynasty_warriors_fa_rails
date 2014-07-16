class RegistrationsController < ApplicationController
  def create
    Registration.create(player_id: params[:player_id], league_id: params[:league_id])
    flash[:notice] = 'Player Added'

    redirect_to league_players_path(league_id: params[:league_id])
  end

  def destroy
    registration = Registration.find_by(player_id: params[:player_id], league_id: params[:league_id])
    registration.destroy
    flash[:notice] = 'Player Removed'

    redirect_to league_players_path(league_id: params[:league_id])
  end
end
