class League < ActiveRecord::Base
  has_many :memberships
  has_many :users, through: :memberships
  has_many :teams
  belongs_to :commissioner, class_name: :User
end
