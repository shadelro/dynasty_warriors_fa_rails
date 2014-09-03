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

players_on_rosters = [
  "Russell Wilson", "Aaron Rodgers", "Alex Smith", "Andrew Luck", "Cam Newton", "Colin Kaepernick", "Matt Forte",
  "Pierre Thomas", "Marshawn Lynch", "Doug Martin", "Adrian Peterson", "Steven Jackson", "DeMarco Murray",
  "Giovani Bernard", "Chris Johnson", "Eddie Lacy", "Arian Foster", "Joique Bell", "Calvin Johnson", "Larry Fitzgerald",
  "Torrey Smith", "Demaryius Thomas", "Antonio Brown", "Roddy White", "Julio Jones", "Marques Colston",
  "Cordarrelle Patterson", "Pierre Garcon", "Kendall Wright", "Reggie Wayne", "Julius Thomas", "Greg Olsen",
  "Delanie Walker", "Jimmy Graham", "Jordan Cameron", "Vernon Davis", "Reggie Bush", "Tavon Austin", "Darren Sproles",
  "Keenan Allen", "Danny Amendola", "Julian Edelman", "Jerrell Freeman", "Luke Kuechly", "James Laurinaitis",
  "Bobby Wagner", "A.J. Hawk", "Paul Posluszny", "Robert Quinn", "Carlos Dunlap", "Chandler Jones", "Lamarr Houston",
  "Greg Hardy", "Sheldon Richardson", "Johnathan Cyprien", "Harrison Smith", "Earl Thomas", "Barry Church",
  "Eric Berry", "T.J. Ward", "Jerod Mayo", "Vontaze Burfict", "Antrel Rolle", "Alec Ogletree", "DeMarcus Ware",
  "Derrick Johnson", "Steven Hauschka", "Dan Bailey", "Justin Tucker", "Lamar Miller", "Ryan Succop", "Adam Vinatieri",
  "Rob Gronkowski", "Ray Rice", "Matt Ryan", "Eric Decker", "Chris Ivory", "Hakeem Nicks", "Shane Vereen",
  "Charles Johnson", "Wes Welker", "Rueben Randle", "Tony Romo", "Ahmad Bradshaw", "Michael Crabtree",
  "Patrick Peterson", "DeSean Jackson", "DeAndre Hopkins", "Fred Jackson", "Eli Manning", "Percy Harvin", "Andy Dalton",
  "Danny Woodhead", "Ben Tate", "Aldon Smith", "Anquan Boldin", "Muhammad Wilkerson", "Tyrann Mathieu",
  "Christine Michael", "Philip Rivers", "Jeremy Maclin", "Charles Clay", "Zac Stacy", "Brian Hartline",
  "Calais Campbell", "Jordan Reed", "Daryl Smith", "Knowshon Moreno", "Michael Floyd", "Cecil Shorts", "Bernard Pierce",
  "Olivier Vernon", "Osi Umenyiora", "Lance Briggs", "Robert Griffin", "Eddie Royal", "Danny Trevathan",
  "Ryan Tannehill", "Tim Wright", "Mike Wallace", "Devonta Freeman", "Michael Johnson", "Bishop Sankey", "Khalil Mack",
  "Terrance Williams", "Jeremy Hill", "Jordan Matthews", "Mike Evans", "Johnny Manziel", "Lorenzo Taliaferro",
  "Carlos Hyde", "Odell Beckham", "Ryan Shazier", "Kelvin Benjamin", "Marqise Lee", "Storm Johnson", "Darqueze Dennard",
  "Charles Sims", "Calvin Pryor", "Terrance West", "Jimmie Ward", "Davante Adams", "Teddy Bridgewater", "Logan Thomas",
  "Tom Brady", "Jay Cutler", "Matthew Stafford", "Peyton Manning", "Montee Ball", "Alfred Morris", "Jamaal Charles",
  "LeSean McCoy", "Rashad Jennings", "Frank Gore", "C.J. Spiller", "Le'Veon Bell", "Brandon Marshall", "Dez Bryant",
  "Vincent Jackson", "A.J. Green", "Andre Johnson", "Jordy Nelson", "T.Y. Hilton", "Alshon Jeffery", "Antonio Gates",
  "Kyle Rudolph", "Jared Cook", "Martellus Bennett", "Emmanuel Sanders", "Greg Jennings", "Ryan Mathews", "Victor Cruz",
  "Karlos Dansby", "D'Qwell Jackson", "Stephen Tulloch", "Lavonte David", "J.J. Watt", "Rob Ninkovich", "Tracy Porter",
  "Jurrell Casey", "Morgan Burnett", "Troy Polamalu", "Charles Woodson", "DeAngelo Hall", "Laron Landry", "Eric Weddle",
  "Jay Feely", "Curtis Lofton", "Stephen Gotskowski", "Matt Bryant", "Darren McFadden", "Matt Prater",
  "Trent Richardson", "Drew Brees", "Steve Smith", "Randall Cobb", "Stevan Ridley", "BenJarvus Green-Ellis",
  "Steve Johnson", "DeAngelo Williams", "Jason Witten", "Tyler Eifert", "Golden Tate", "Kam Chancellor",
  "NaVorro Bowman", "Jason Pierre-Paul", "Garrett Graham", "Anthony Spencer", "James Jones", "Mike Nugent",
  "Elvis Dumervil", "Robert Woods", "Aaron Dobson", "Lawrence Timmons", "Sammy Watkins", "Maurice Jones-Drew",
  "EJ Manuel", "Bilal Powell", "Brandin Cooks", "Kenbrell Thompkins", "LeGarrette Blount", "Kenny Stills",
  "Austin Seferian-Jenkins", "Andre Ellington", "HaHa Clinton-Dix", "Jadaveon Clowney", "Isaiah Crowell", "Nick Foles",
  "Blake Bortles", "C.J. Mosley", "Eric Ebron", "Tre Mason", "Justin Gilbert", "Aaron Donald", "Martavis Bryant",
  "Kadeem Carey", "Chris Kirksey", "Josh Gordon", "Kiko Alonso", "Sean Lee"
]

Player.all.each do |player|
  player.destroy if players_on_rosters.include? "#{player.first_name} #{player.last_name}"
end

Player.find_or_create_by(
  first_name: 'Jace',
  last_name: 'Amaro',
  position: 'TE',
  height: 78,
  weight: 260,
  age: 22,
  experience: 0
)
Player.find_or_create_by(
  first_name: 'Mike',
  last_name: 'Tolbert',
  position: 'RB',
  number: 35,
  height: 69,
  weight: 243,
  age: 28,
  experience: 2
)
Player.find_or_create_by(
  first_name: 'Geno',
  last_name: 'Smith',
  position: 'QB',
  number: 7,
  height: 73,
  weight: 220,
  age: 23,
  experience: 1
)
