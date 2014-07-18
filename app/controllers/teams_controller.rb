class TeamsController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized, except: [:index, :show]

  def show
    @team = Team.find_by(id: params[:id], league_id: params[:league_id])
  end

  def index
    @teams = Team.where(league_id: params[:league_id])
  end

  def new
    @team = Team.new(league_id: params[:league_id])
    authorize @team
  end

  def create
    @team = Team.new(league_id: params[:league_id], name: params[:name], rank: params[:rank], user_id: params[:user])

    authorize @team

    @team.save
    flash[:notice] = 'Team Created'
    redirect_to league_team_path(id: @team.id)
  end

  def edit
    @team = Team.find_by(id: params[:id], league_id: params[:league_id])
    authorize @team
  end

  def update
    team = Team.find_by(id: params[:id], league_id: params[:league_id])
    authorize team

    team.name = params[:name]
    team.user_id = params[:user]
    team.remaining_salary = params[:remaining_salary]
    team.save

    flash[:notice] = 'Team updated'
    redirect_to league_team_path(id: team.id)
  end
end
