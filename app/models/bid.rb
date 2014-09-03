# == Schema Information
#
# Table name: bids
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  team_id    :integer
#  amount     :decimal(, )
#  created_at :datetime
#  updated_at :datetime
#

class Bid < ActiveRecord::Base
  belongs_to :player
  belongs_to :team

  after_save :update_remaining_salary

  validate :can_place_bid

  def update_remaining_salary
    old_bid = self.player.top_bid(self.team.league_id)
    if old_bid
      old_team = old_bid.team
      old_team.remaining_salary += old_bid.amount
      old_team.save
      old_bid.destroy
    end

    self.team.remaining_salary -= self.amount - (amount_was || 0)
    self.team.save
  end

  def can_place_bid
    old_bid = self.player.top_bid(self.team.league_id)

    if self.team.remaining_salary < self.amount - (amount_was || 0)
      errors.add(:amount, 'cannot exceed remaining salary')
    elsif old_bid && self.amount <= old_bid.amount
      errors.add(:amount, 'must be greater than current bid')
    end
  end
end
