# == Schema Information
#
# Table name: leagues
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  commissioner_id :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class League < ActiveRecord::Base
  has_many :memberships
  has_many :players, through: :registrations
  has_many :registrations
  has_many :users, through: :memberships
  has_many :teams
  belongs_to :commissioner, class_name: :User

  def start
    self.active = true
    self.save
  end

  def finish
    self.active = false
    self.save
  end

  def active?
    self.active
  end
end
