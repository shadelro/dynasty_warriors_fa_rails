class PlayersController < ApplicationController
  def show
    @player = Player.find(params[:id])
    authorize @player
  end

  def index
    redirect_to root_path unless current_user.is_admin?
    @players = Player.all
  end

  def create
    @player = Player.new(
      number: params[:number],
      first_name: params[:first_name],
      last_name: params[:last_name],
      position: params[:position],
      height: params[:height],
      weight: params[:weight],
      age: params[:age],
      experience: params[:experience]
    )
    authorize @player

    if @player.save
      flash[:notice] = 'Player Created'
      redirect_to @player
    else
      flash[:error] = 'Failboat'
      redirect_to new_player_path
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    authorize @player

    @player.number = params[:number]
    @player.position = params[:position]
    @player.height = params[:height]
    @player.weight = params[:weight]
    @player.age = params[:age]
    @player.age = params[:age]
    @player.experience = params[:experience]

    if @player.save
      flash[:notice] = 'Updated player'
    else
      flash[:error] = 'Failboat'
    end

    redirect_to @player
  end

  def destroy
    @player = Player.find(params[:id])
    authorize @player

    @player.destroy

    redirect_to players_path
  end
end
