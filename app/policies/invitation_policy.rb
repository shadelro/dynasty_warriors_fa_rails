class InvitationPolicy
  attr_reader :user, :invitation

  def initialize(user, invitation)
    @user = user
    @invitation = invitation
  end

  def create?
    user.is_commissioner?(invitation.league)
  end

  def new?
    create?
  end

  def update?
    create?
  end

  def edit?
    update?
  end

end
