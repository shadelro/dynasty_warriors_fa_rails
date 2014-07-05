class InvitationsController < ApplicationController
  def show
    @invitation = Invitation.find_by(id: params[:id], user: current_user)
  end

  def index
    user = User.find(params[:user_id])
    @invitations = user.invitations
  end

  def new
    @users = User.all
  end

  def create
    league = League.find(params[:league_id])
    Invitation.create(owner: current_user, user_id: params[:user], league_id: params[:league_id])

    flash[:notice] = 'Success'
    redirect_to league
  end
end
