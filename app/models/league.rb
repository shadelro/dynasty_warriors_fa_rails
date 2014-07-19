# == Schema Information
#
# Table name: leagues
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  commissioner_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#  active          :boolean          default(FALSE)
#

class League < ActiveRecord::Base
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  has_many :teams, dependent: :destroy
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
