class Bid < ActiveRecord::Base
  belongs_to :player
  belongs_to :user
end
