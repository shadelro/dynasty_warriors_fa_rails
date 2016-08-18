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

players_on_teams = [
   "A.J. Green", "Aaron Donald", "Aaron Rodgers", "Adrian Peterson", "Alec Ogletree", "Alex Collins",
   "Alfred Morris", "Allen Hurns", "Allen Robinson", "Alshon Jeffery", "Amari Cooper", "Ameer Abdullah",
   "Andre Ellington", "Andrew Luck", "Andy Dalton", "Antonio Brown", "Antwon Blake", "Arian Foster",
   "Austin Hooper", "Austin Seferian-Jenkins", "Barry Church", "Ben Roethlisberger", "Benjamin Watson",
   "Blake Bortles", "Bobby Wagner", "Brandin Cooks", "Brandon Marshall", "Brandon Marshall",
   "Brandon McManus", "Braxton Miller", "Breshad Perriman", "Brock Osweiler", "C.J. Anderson",
   "C.J. Mosley", "C.J. Prosise", "C.J. Spiller", "Cairo Santos", "Cameron Wake", "Cardale Jones",
   "Carlos Dunlap", "Carlos Hyde", "Carson Palmer", "Carson Wentz", "Chandler Catanzaro", "Chandler Jones",
   "Charcandrick West", "Charles Clay", "Chris Ivory", "Chris Johnson", "Chris Moore", "Christian Kirksey",
   "Clive Walford", "Corey Coleman", "Corey Graham", "D'Qwell Jackson", "Danny Woodhead", "Darren Sproles",
   "Daryl Smith", "David Johnson", "DeAndre Hopkins", "DeAndre Washington", "DeAngelo Hall",
   "DeAngelo Williams", "Delanie Walker", "DeMarco Murray", "Demaryius Thomas", "Deone Bucannon",
   "Derek Carr", "Derrick Henry", "Derrick Johnson", "DeSean Jackson", "DeVante Parker", "Devin Funchess",
   "Devonta Freeman", "Devontae Booker", "Dez Bryant", "Dion Lewis", "Donte Moncrief",
   "Dorial Green-Beckham", "Doug Baldwin", "Doug Martin", "Drew Brees", "Duke Johnson Jr.", "Dwayne Allen",
   "Eddie Lacy", "Eli Apple", "Eli Manning", "Emmanuel Sanders", "Eric Decker", "Eric Ebron",
   "Eric Kendricks", "Eric Weddle", "Ezekiel Ansah", "Ezekiel Elliott", "Fletcher Cox", "Frank Gore",
   "Gary Barnidge", "Giovani Bernard", "Golden Tate", "Graham Gano", "Greg Olsen", "Ha Ha Clinton-Dix",
   "Harrison Smith", "Hunter Henry", "Isaiah Crowell", "J.J. Watt", "Jacob Tamme", "Jadeveon Clowney",
   "Jaelen Strong", "Jalen Ramsey", "Jamaal Charles", "Jameis Winston", "James Laurinaitis",
   "James Starks", "Jamie Collins", "Jared Goff", "Jarvis Landry", "Jason Pierre-Paul", "Javorius Allen",
   "Jay Ajayi", "Jay Cutler", "Jaylon Smith", "Jeremy Hill", "Jeremy Langford", "Jeremy Maclin",
   "Jimmy Graham", "Joe Flacco", "Joey Bosa", "John Brown", "Jonathan Williams", "Jordan Howard",
   "Jordan Matthews", "Jordan Reed", "Jordy Nelson", "Josh Doctson", "Josh Gordon", "Julian Edelman",
   "Julio Jones", "Julius Thomas", "Jurrell Casey", "Justin Forsett", "Justin Houston", "Justin Tucker",
   "Kam Chancellor", "Karl Joseph", "Karlos Williams", "Keanu Neal", "Keenan Allen", "Keith Marshall",
   "Kelvin Benjamin", "Kendall Wright", "Kenneth Dixon", "Kenyan Drake", "Kevin White", "Khalil Mack",
   "Kirk Cousins", "Kurt Coleman", "Kwon Alexander", "Kyle Rudolph", "Lamar Miller", "Landon Collins",
   "Laquon Treadwell", "Larry Fitzgerald", "Latavius Murray", "Lavonte David", "Le'Veon Bell",
   "Leonard Floyd", "Leonte Carroo", "LeSean McCoy", "Luke Kuechly", "Malcolm Smith", "Marcus Mariota",
   "Mark Ingram", "Markus Wheaton", "Martavis Bryant", "Martellus Bennett", "Marvin Jones", "Matt Bryant",
   "Matt Forte", "Matt Jones", "Matt Ryan", "Matthew Stafford", "Melvin Gordon", "Michael Bennett",
   "Michael Crabtree", "Michael Floyd", "Michael Thomas", "Mike Evans", "Mike Nugent",
   "Muhammad Wilkerson", "Myles Jack", "Nelson Agholor", "Nick Foles", "Nick Vannett", "Odell Beckham Jr.",
   "Paul Perkins", "Paul Posluszny", "Paul Worrilow", "Paxton Lynch", "Pharoh Cooper", "Philip Rivers",
   "Phillip Dorsett", "Preston Brown", "Randall Cobb", "Rashad Jennings", "Rashard Higgins",
   "Reshad Jones", "Rob Gronkowski", "Rob Ninkovich", "Robbie Gould", "Robert Quinn", "Roberto Aguayo",
   "Russell Wilson", "Ryan Mathews", "Ryan Shazier", "Ryan Tannehill", "Sam Bradford", "Sammy Watkins",
   "Sean Lee", "Shane Vereen", "Stefon Diggs", "Stephen Gostkowski", "Sterling Shepard", "Steve Smith Sr.",
   "T.J. Yeldon", "T.Y. Hilton", "Tavon Austin", "Teddy Bridgewater", "Telvin Smith", "Terrance Williams",
   "Tevin Coleman", "Theo Riddick", "Thomas Davis", "Thomas Rawls", "Todd Gurley", "Tony Jefferson",
   "Travis Benjamin", "Travis Kelce", "Tyler Boyd", "Tyler Eifert", "Tyler Ervin", "Tyler Higbee",
   "Tyler Lockett", "Tyrann Mathieu", "Tyrod Taylor", "Vernon Davis", "Vernon Hargreaves III",
   "Victor Cruz", "Vincent Jackson", "Vincent Rey", "Von Miller", "Wendell Smallwood", "Will Fuller",
   "William Jackson III", "Willie Snead", "Zach Ertz", "Zach Zenner"
]

players_on_teams.each do |name|
  names = name.split(' ')
  players = Player.where(first_name: names[0], last_name: names[1])
  if players.count == 1
    players.first.destroy
  elsif players.count > 1
    print "ERROR: Multiple players found for #{name} - please resolve manually.\n"
  else
    print "WARNING: Could not find #{name} in the player base.\n"
  end
end
