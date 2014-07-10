# == Schema Information
#
# Table name: invitations
#
#  id         :integer          not null, primary key
#  owner_id   :string(255)
#  user_id    :string(255)
#  league_id  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Invitation < ActiveRecord::Base
  belongs_to :league
  belongs_to :user
  belongs_to :owner, class_name: :User, foreign_key: :owner_id
end
