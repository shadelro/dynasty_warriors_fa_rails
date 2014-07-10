module Scraper
  class Scraper
    def initialize(client = nil)
      @client ||= Clients::ESPN.new
    end

    def team_roster(team_name)
      @client.team_roster(team_name)
    end
  end
end
