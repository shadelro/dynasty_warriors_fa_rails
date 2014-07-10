# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  league_id  :integer
#  user_id    :integer
#  role       :integer
#  created_at :datetime
#  updated_at :datetime
#

class Membership < ActiveRecord::Base
  belongs_to :league
  belongs_to :user
end
