require 'nokogiri'
require 'open-uri'

module Scraper
  module Clients
    class ESPN
      def initialize
        @base_uri = 'http://espn.go.com/nfl/team/roster/_/name'
      end

      def team_roster(team_name)
        team = team_directory[team_name]
        page = Nokogiri::HTML(open("#{@base_uri}/#{team[:short_name]}/#{team[:full_name]}"))
        rows = page.css('#my-players-table tr.oddrow, #my-players-table tr.evenrow')

        players = rows.map { |row|
          attributes = row.css('td')
          first_name, last_name = text_to_string(attributes[1]).split(' ')

          player = Player.find_by(
            first_name: first_name,
            last_name: last_name,
            nfl_team: team_name.capitalize
          )

          if player
            nil
          else
            player = Player.new(
              first_name: first_name,
              last_name: last_name,
              nfl_team: team_name.capitalize,
              number: text_to_int(attributes[0]),
              position: text_to_position(attributes[2]),
              age: text_to_int(attributes[3]),
              height: text_to_height(attributes[4]),
              weight: text_to_int(attributes[5]),
              experience: text_to_exp(attributes[6])
            )
            player
          end
        }.compact

        players.select { |player| %W(QB RB WR TE DL LB DB K).include? player.position }
      end

      private

      def text_to_string(attribute)
        attribute.text == '--' ? nil : attribute.text
      end

      def text_to_int(attribute)
        attribute.text == '--' ? nil : attribute.text.to_i
      end

      def text_to_position(attribute)
        position = text_to_string(attribute)
        if position == 'DT' || position == 'DE'
          'DL'
        elsif position == 'CB' || position == 'S' || position == 'SS' || position == 'FS'
          'DB'
        elsif position == 'PK'
          'K'
        else
          position
        end
      end

      def text_to_height(attribute)
        attribute.text == '--' ? nil : height_from_string(attribute.text)
      end

      def text_to_exp(attribute)
        attribute.text == 'R' ? 0 : attribute.text.to_i
      end

      def height_from_string(string)
        feet, inches = string.split('-')
        (feet.to_i * 12) + inches.to_i
      end

      def team_directory
        {
          bills: {short_name: 'buf', full_name: 'buffalo-bills'},
          dolphins: {short_name: 'mia', full_name: 'miami-dolphins'},
          patriots: {short_name: 'ne', full_name: 'new-england-patriots'},
          jets: {short_name: 'nyj', full_name: 'new-york-jets'},
          broncos: {short_name: 'den', full_name: 'denver-broncos'},
          chiefs: {short_name: 'kc', full_name: 'kansas-city-chiefs'},
          raiders: {short_name: 'oak', full_name: 'oakland-raiders'},
          chargers: {short_name: 'lac', full_name: 'los-angeles-chargers'},
          ravens: {short_name: 'bal', full_name: 'baltimore-ravens'},
          bengals: {short_name: 'cin', full_name: 'cincinatti-bengals'},
          browns: {short_name: 'cle', full_name: 'cleveland-browns'},
          steelers: {short_name: 'pit', full_name: 'pittsburgh-steelers'},
          texans: {short_name: 'hou', full_name: 'houston-texans'},
          colts: {short_name: 'ind', full_name: 'indianapolis-colts'},
          jaguars: {short_name: 'jax', full_name: 'jacksonville-jaguars'},
          titans: {short_name: 'ten', full_name: 'tennessee-texans'},
          cowboys: {short_name: 'dal', full_name: 'dallas-cowboys'},
          giants: {short_name: 'nyg', full_name: 'new-york-giants'},
          eagles: {short_name: 'phi', full_name: 'philidelphia-eagles'},
          redskins: {short_name: 'wsh', full_name: 'washington-redskins'},
          cardinals: {short_name: 'ari', full_name: 'arizona-cardinals'},
          fortyniners: {short_name: 'sf', full_name: 'san-fransisco-49ers'},
          seahawks: {short_name: 'seattle', full_name: 'seattle-seahawks'},
          rams: {short_name: 'lar', full_name: 'los-angeles-rams'},
          bears: {short_name: 'chi', full_name: 'chicago-bears'},
          lions: {short_name: 'det', full_name: 'detroit-lions'},
          packers: {short_name: 'gb', full_name: 'green-bay-packers'},
          vikings: {short_name: 'min', full_name: 'minnesota-vikings'},
          falcons: {short_name: 'atl', full_name: 'atlanta-falcons'},
          panthers: {short_name: 'car', full_name: 'carolina-panthers'},
          saints: {short_name: 'no', full_name: 'new-orleans-saints'},
          buccaneers: {short_name: 'tb', full_name: 'tampa-bay-buccaneers'}
        }
      end
    end
  end
end
