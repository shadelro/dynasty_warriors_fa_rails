# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

scraper = Scraper::Scraper.new
[
  :bills, :dolphins, :patriots, :jets, :broncos, :chiefs, :raiders, :chargers, :ravens, :bengals, :browns, :steelers,
  :texans, :colts, :jaguars, :titans, :cowboys, :giants, :eagles, :redskins, :cardinals, :fortyniners, :seahawks,
  :rams, :bears, :lions, :packers, :vikings, :falcons, :panthers, :saints, :buccaneers
].each do |team|
  scraper.team_roster(team).each do |player|
    print "Saving new player: #{player.nfl_team} #{player.position} #{player.first_name} #{player.last_name}\n"
    player.save
  end
end

# players_on_teams = [
#   "Aaron Rodgers", "Andrew Luck", "Peyton Manning", "Russell Wilson", "Ben Roethlisberger", "Drew Brees", "Tom Brady",
#   "Matt Ryan", "Eli Manning", "Ryan Tannehill", "Tony Romo", "Philip Rivers", "Joe Flacco", "Jay Cutler", "Matthew Stafford",
#   "Colin Kaepernick", "Cam Newton", "Andy Dalton", "Teddy Bridgewater", "Nick Foles", "Carson Palmer", "Johnny Manziel",
#   "Jameis Winston", "Garrett Grayson", "Marcus Mariota", "Le'Veon Bell", "DeMarco Murray", "Matt Forte", "Marshawn Lynch",
#   "Arian Foster", "Eddie Lacy", "Jamaal Charles", "Justin Forsett", "Lamar Miller", "Jeremy Hill", "C.J. Anderson",
#   "LeSean McCoy", "Joique Bell", "Mark Ingram", "Giovani Bernard", "Alfred Morris", "Fred Jackson", "Andre Ellington",
#   "Shane Vereen", "Frank Gore", "Darren Sproles", "Chris Ivory", "Andre Williams", "Rashad Jennings", "Tre Mason",
#   "Isaiah Crowell", "Darren McFadden", "Denard Robinson", "Chris Johnson", "Terrance West", "Jerick McKinnon",
#   "LeGarrette Blount", "Latavius Murray", "Bishop Sankey", "Devonta Freeman", "Doug Martin", "Lorenzo Taliaferro",
#   "C.J. Spiller", "Ryan Mathews", "Carlos Hyde", "Joseph Randle", "Charles Sims", "Montee Ball", "Danny Woodhead",
#   "Adrian Peterson", "David Johnson", "Jeremy Langford", "Jay Ajayi", "David Cobb", "Ameer Abdullah", "Antonio Brown",
#   "Demaryius Thomas", "Jordy Nelson", "Dez Bryant", "Emmanuel Sanders", "Odell Beckham Jr.", "Julio Jones", "Randall Cobb",
#   "Jeremy Maclin", "T.Y. Hilton", "Golden Tate", "Alshon Jeffery", "Mike Evans", "DeAndre Hopkins", "Calvin Johnson",
#   "Julian Edelman", "Steve Smith Sr.", "Kelvin Benjamin", "Anquan Boldin", "DeSean Jackson", "Roddy White", "A.J. Green",
#   "Brandon LaFell", "Mike Wallace", "Eric Decker", "Sammy Watkins", "Jordan Matthews", "Andre Johnson", "Torrey Smith",
#   "Brandon Marshall", "Vincent Jackson", "Jarvis Landry", "Keenan Allen", "Kenny Stills", "Kendall Wright", "Michael Floyd",
#   "Pierre Garcon", "Michael Crabtree", "Terrance Williams", "Brandin Cooks", "Martavis Bryant", "Allen Robinson", "Davante Adams",
#   "Donte Moncrief", "Charles Johnson", "Victor Cruz", "Josh Gordon", "Justin Hardy", "Devin Smith", "DeVante Parker",
#   "Rob Gronkowski", "Jimmy Graham", "Greg Olsen", "Antonio Gates", "Martellus Bennett", "Travis Kelce", "Delanie Walker",
#   "Julius Thomas", "Jason Witten", "Heath Miller", "Larry Donnell", "Zach Ertz", "Owen Daniels", "Jordan Reed",
#   "Kyle Rudolph", "Eric Ebron", "Austin Seferian-Jenkins", "Ladarius Green", "Virgil Green", "Tyler Eifert", "Clive Walford",
#   "Maxx Williams", "Luke Kuechly", "D'Qwell Jackson", "DeAndre Levy", "Justin Houston", "Lavonte David", "Jamie Collins",
#   "Paul Worrilow", "C.J. Mosley", "David Harris", "Curtis Lofton", "Daryl Smith", "Lawrence Timmons", "Brandon Marshall",
#   "Jelani Jenkins", "Von Miller", "Bobby Wagner", "Karlos Dansby", "Mychal Kendricks", "Sio Moore", "Khalil Mack",
#   "Chris Kirksey", "DeMarcus Ware", "Willie Young", "Paul Posluszny", "Jerod Mayo", "Ryan Shazier", "Vontaze Burfict",
#   "Danny Trevathan", "Jadeveon Clowney", "NaVorro Bowman", "Sean Lee", "Kiko Alonso", "Eric Kendricks", "Vic Beasley",
#   "Randy Gregory", "Tyler Lockett", "Phillip Dorsett", "Dorial Green-Beckham", "Nelson Agholor", "Breshad Perriman",
#   "Amari Cooper", "Devin Funchess", "Kevin White", "Jaelen Strong", "Melvin Gordon", "Karlos WIlliams", "Javorius Allen",
#   "Josh Robinson", "Duke Johnson", "T.J. Yeldon", "Todd Gurley", "Tevin Coleman", "Stephen Gostkowski", "Cody Parkey",
#   "Adam Vinatieri", "Dan Bailey", "Matt Bryant", "Justin Tucker", "Graham Gano", "Chandler Catanzaro", "Mike Nugent",
#   "Phil Dawson"
# ]

# players_on_teams.each do |name|
#   names = name.split(' ')
#   players = Player.where(first_name: names[0], last_name: names[1])
#   if players.count == 1
#     players.first.destroy
#   elsif players.count > 1
#     print "ERROR: Multiple players found for #{name} - please resolve manually.\n"
#   else
#     print "WARNING: Could not find #{name} in the player base.\n"
#   end
# end
