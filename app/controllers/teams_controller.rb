class TeamsController < ApplicationController
  before_action :authenticate_user!

  def show
    @team = Team.find_by(team_params[:id], league_id: team_params[:league_id])
  end

  def index
    @teams = Team.find_by(league_id: team_params[:league_id])
  end

  def new
    @team = Team.new(league_id: team_params[:league_id])
  end

  def create
    team = Team.create(league_id: team_params[:league_id], name: team_params[:name], rank: team_params[:rank])

    flash[:notice] = 'Team Created'
    redirect_to league_team_path(id: team.id)
  end

  def edit
    @team = Team.find_by(team_params[:id], league_id: team_params[:league_id])
  end

  def update
    team = Team.find_by(team_params[:id], league_id: team_params[:league_id])
    team.name = team_params[:name]
    team.user_id = team_params[:user]
    team.remaining_salary = team_params[:remaining_salary]
    team.save

    flash[:notice] = 'Team updated'
    redirect_to league_team_path(id: team.id)
  end

  private

  def team_params
    params.permit(:league_id, :id, :name, :user, :rank, :remaining_salary)
  end
end
