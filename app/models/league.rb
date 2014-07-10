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
  has_many :users, through: :memberships
  has_many :teams
  belongs_to :commissioner, class_name: :User
end
