class LeaguesController < ApplicationController
  after_action :verify_authorized, except: [:index, :show]

  def show
    @league = League.find(params[:id])
  end

  def index
    @leagues = current_user.leagues
  end

  def new
    league = League.new

    authorize(league)
  end

  def create
    league = League.new(name: params[:name], commissioner: current_user, active: false)
    authorize(league)

    if league.save
      if Membership.create(league: league, user: current_user, role: 1)
        flash[:notice] = 'League Created'
        redirect_to league_path(league)
      else
        league.destroy
        flash[:error] = 'League could not be created'
        redirect_to user_leagues_path(user_id: current_user.id)
      end
    else
      flash[:error] = 'League could not be created'
      redirect_to user_leagues_path(user_id: current_user.id)
    end
  end

  def start
    league = League.find(params[:id])
    authorize(league)
    league.start

    flash[:notice] = 'Free Agency Started'
    redirect_to league_players_path(league)
  end

  def finish
    league = League.find(params[:id])
    league.finish
    flash[:notice] = 'Free Agency Ended'
    redirect_to league_players_path(league)
  end
end
