class BidPolicy
  attr_reader :user, :bid

  def initialize(user, bid)
    @user = user
    @bid = bid
  end

  def create?
    team = bid.team
    team && team.user == user && team.league.active?
  end

  def new?
    create?
  end

  def update?
    create?
  end

  def edit?
    create?
  end

  def destroy?
    create?
  end
end
