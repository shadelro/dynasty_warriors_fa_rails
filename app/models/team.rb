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
  has_many :bids, dependent: :destroy

  before_create :init

  def init
    self.remaining_salary ||= 50 * self.rank
  end
end
