class MembershipsController < ApplicationController
  def create
    invitation = Invitation.find_by(league_id: params[:league_id], user_id: current_user.id)
    if invitation
      Membership.create(league_id: params[:league_id], user_id: current_user.id)
      invitation.destroy
      flash[:notice] = 'Success'
    else
      flash[:alert] = 'Nice Try'
    end

    redirect_to user_leagues_path(user_id: current_user.id)
  end

  def destroy

  end
end
