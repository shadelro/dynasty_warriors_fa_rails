module PlayersHelper
  def top_bidder(player, league_id)
    top_bidder = player.top_bidder(league_id)
    top_bid = player.top_bid(league_id)

    if top_bidder.present? && top_bid.present?
      "#{top_bidder.name}: #{number_to_currency(top_bid.amount, precision: 0)}"
    end
  end

  def positions(players)
    players.map(&:position).uniq.sort
  end
end
