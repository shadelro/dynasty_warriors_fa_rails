# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  position   :string(255)
#  number     :integer
#  height     :integer
#  weight     :integer
#  age        :integer
#  experience :integer
#  created_at :datetime
#  updated_at :datetime
#

class Player < ActiveRecord::Base
  has_many :bids

  def top_bids
    bids.sort_by(&:amount).reverse
  end

  def top_bid
    top_bids.first
  end

  def top_bidders
    top_bids.map { |bid| bid.team.user }
  end

  def top_bidder
    top_bidders.first || User.new
  end

  def full_name
    "#{last_name}, #{first_name}"
  end

  def height_display
    height && "#{height / 12}-#{height % 12}"
  end

  def experience_display
    experience && experience == 0 ? 'R' : experience
  end
end
