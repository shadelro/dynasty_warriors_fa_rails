class PlayerPolicy
  attr_reader :user, :team

  def initialize(user, player)
    @user = user
    @player = player
  end

  def show?
    user.is_admin?
  end

  def new?
    show?
  end

  def create?
    show?
  end

  def edit?
    show?
  end

  def update?
    show?
  end

  def destroy?
    show?
  end

end

