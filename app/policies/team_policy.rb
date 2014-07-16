class TeamPolicy
  attr_reader :user, :team

  def initialize(user, team)
    @user = user
    @team = team
  end

  def create?
    user.is_commissioner?(team.league)
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

