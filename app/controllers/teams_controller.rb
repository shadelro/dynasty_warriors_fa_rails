class TeamsController < ApplicationController
  before_action :authenticate_user!

  def show
    @team = Team.find(team_params[:id])
  end

  def index
    @teams = Team.all.sort_by(&:rank)
  end

  def new
  end

  def create
    @team = Team.create(user: current_user, name: team_params[:name])

    flash[:notice] = 'Team Created'
    redirect_to team_path(@team)
  end

  private

  def team_params
    params.permit(:id, :name)
  end
end
