class Team < ActiveRecord::Base
  belongs_to :user
  has_many :bids

  before_create :init
  before_save :update_salary

  def init
    self.rank ||= 1
    self.salary_cap ||= 1000000 * self.rank
    self.remaining_salary ||= self.salary_cap
  end

  def update_salary
    if self.rank != rank_was
      self.salary_cap = 1000000 * self.rank
    end
  end
end
