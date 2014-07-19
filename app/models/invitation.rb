# == Schema Information
#
# Table name: invitations
#
#  id         :integer          not null, primary key
#  owner_id   :integer
#  user_id    :integer
#  league_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Invitation < ActiveRecord::Base
  belongs_to :league
  belongs_to :user
  belongs_to :owner, class_name: :User
end
