class LeaguesController < ApplicationController
  def show
    @league = League.find_by(league_params[:id])
  end

  def index
    @leagues = current_user.leagues
  end

  def new

  end

  def create
    league = League.create(name: league_params[:name], commissioner: current_user)
    membership = Membership.create(league: league, user: current_user, role: 3)

    flash[:notice]  = 'Team Created'
    redirect_to league_path(league)
  end

  private

  def league_params
    params.permit(:name)
  end
end
