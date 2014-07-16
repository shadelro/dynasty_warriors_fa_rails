class LeaguesController < ApplicationController
  def show
    @league = League.find(league_params[:id])
  end

  def index
    @leagues = current_user.leagues
  end

  def new

  end

  def create
    league = League.create(name: league_params[:name], commissioner: current_user, active: false)
    membership = Membership.create(league: league, user: current_user, role: 1)

    flash[:notice] = 'League Created'
    redirect_to league_path(league)
  end

  def start
    league = League.find(league_params[:id])
    league.start
    flash[:notice] = 'Free Agency Started'
    redirect_to league
  end

  def finish
    league = League.find(league_params[:id])
    league.finish
    flash[:notice] = 'Free Agency Ended'
    redirect_to league
  end

  private

  def league_params
    params.permit(:name, :id)
  end
end
