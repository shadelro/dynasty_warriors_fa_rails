class InvitationsController < ApplicationController
  after_action :verify_authorized, except: [:show, :index]

  def show
    @invitation = Invitation.find_by(id: params[:id], user_id: current_user.id)
  end

  def index
    user = User.find(params[:user_id])
    @invitations = user.invitations
  end

  def new
    invitation = Invitation.new(owner: current_user, league_id: current_league.id)
    authorize invitation
  end

  def create
    user = User.find_by(email: params[:email])
    if user && Membership.find_by(league_id: current_league.id, user_id: user.id).nil?
      invitation = Invitation.create(owner: current_user, user_id: user.id, league_id: current_league.id)
    end
    authorize invitation

    if invitation
      flash[:notice] = 'Invitation Sent'
    else
      flash[:error] = 'Invitation could not be sent'
    end
    redirect_to current_league
  end
end
