class League < ActiveRecord::Base
  has_many :memberships
  has_many :users, through: :memberships
  has_many :teams, through: :users
end
