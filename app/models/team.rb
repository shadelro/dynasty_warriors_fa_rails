# == Schema Information
#
# Table name: teams
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  name             :string(255)
#  rank             :integer
#  salary_cap       :integer
#  remaining_salary :integer
#  created_at       :datetime
#  updated_at       :datetime
#  league_id        :integer
#

class Team < ActiveRecord::Base
  belongs_to :league
  belongs_to :user
  has_many :bids

  before_create :init
  before_save :update_salary

  def init
    self.salary_cap ||= 50 * self.rank
    self.remaining_salary ||= self.salary_cap
  end

  def update_salary
    self.salary_cap = 50 * self.rank if self.rank != rank_was
  end
end
