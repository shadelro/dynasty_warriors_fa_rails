class MembershipsController < ApplicationController
  def create
    invitation = Invitation.find_by(league_id: params[:league_id], user_id: current_user.id)

    if invitation
      membership = Membership.create(league_id: params[:league_id], user_id: current_user.id)

      if membership
        invitation.destroy
        flash[:notice] = 'Invitation Accepted'
      else
        flash[:error] = 'Invitation could not be accepted'
      end
    else
      flash[:error] = 'Invitation could not be accepted'
    end

    redirect_to user_leagues_path(user_id: current_user.id)
  end
end
