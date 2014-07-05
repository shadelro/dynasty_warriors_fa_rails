class Invitation < ActiveRecord::Base
  belongs_to :league
  belongs_to :user
  belongs_to :owner, class_name: :User, foreign_key: :owner_id
end
