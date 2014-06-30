# == Schema Information
#
# Table name: bids
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  user_id    :integer
#  amount     :decimal(, )
#  created_at :datetime
#  updated_at :datetime
#

class Bid < ActiveRecord::Base
  belongs_to :player
  belongs_to :team

  after_save :update_salary

  validate :team_has_salary

  def update_salary
    self.team.remaining_salary -= self.amount - (amount_was || 0)
    self.team.save
  end

  def team_has_salary
    if self.team.remaining_salary < self.amount - (amount_was || 0)
      errors.add(:amount, "team doesn't have enough salary")
    end
  end
end
