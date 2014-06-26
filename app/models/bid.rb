class Bid < ActiveRecord::Base
  belongs_to :player
  belongs_to :team

  after_save :update_salary

  validate :team_has_salary

  def update_salary
    self.team.remaining_salary += (amount_was || 0) - self.amount
    self.team.save
  end

  def team_has_salary
    errors.add(:amount, "team doesn't have enough salary") if self.team.remaining_salary < self.amount
  end
end
