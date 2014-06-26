class Player < ActiveRecord::Base
  has_many :bids

  def top_bids
    bids.sort_by(&:amount).reverse
  end

  def top_bidders
    top_bids.map(&:user)
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
end
