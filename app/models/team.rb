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
