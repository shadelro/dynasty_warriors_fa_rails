class LeaguePolicy
  attr_reader :user, :league

  def initialize(user, league)
    @user = user
    @league = league
  end

  def create?
    true
  end

  def update?
    user.is_commissioner?(league)
  end

  def edit?
    update?
  end

  def start?
    update?
  end

  def finish?
    update?
  end
end
