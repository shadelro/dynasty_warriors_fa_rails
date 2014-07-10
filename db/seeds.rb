# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

scraper = Scraper::Scraper.new
[
  :bills, :dolphins, :patriots, :jets, :broncos, :chiefs, :raiders, :chargers, :ravens, :bengals, :browns, :steelers,
  :texans, :colts, :jaguars, :titans, :cowboys, :giants, :eagles, :redskins, :cardinals, :fortyniners, :seahawks,
  :rams, :bears, :lions, :packers, :vikings, :falcons, :panthers, :saints, :buccaneers
].each do |team|
  scraper.team_roster(team).map(&:save)
end
