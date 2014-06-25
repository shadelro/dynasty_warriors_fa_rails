# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Chicago Bears
jared_allen = Player.find_or_create_by(
  number: 69,
  last_name: 'Allen',
  first_name: 'Jared',
  position: 'DE',
  weight: 270,
  age: 32,
  experience: 11
)
david_bass = Player.find_or_create_by(
  number: 91,
  last_name: 'Bass',
  first_name: 'David',
  position: 'DE',
  weight: 256,
  age: 23,
  experience: 2
)
josh_bellamy = Player.find_or_create_by(
  number: 11,
  last_name: 'Bellamy',
  first_name: 'Josh',
  position: 'WR',
  weight: 206,
  age: 25,
  experience: 1
)
martellus_bennett = Player.find_or_create_by(
  number: 83,
  last_name: 'Bennett',
  first_name: 'Martellus',
  position: ' TE',
  weight: 265,
  age: 27,
  experience: 7
)
taylor_boggs = Player.find_or_create_by(
  number: 60,
  last_name: 'Boggs',
  first_name: 'Taylor',
  position: 'C',
  weight: 285,
  age: 27,
  experience: 2
)
cody_booth = Player.find_or_create_by(
  number: 73,
  last_name: 'Booth',
  first_name: 'Cody',
  position: 'T',
  weight: 292,
  age: 23,
  experience: 0
)
jonathan_bostic = Player.find_or_create_by(
  number: 57,
  last_name: 'Bostic',
  first_name: 'Jonathan',
  position: 'LB',
  weight: 246,
  age: 23,
  experience: 2
)
lance_briggs = Player.find_or_create_by(
  number: 55,
  last_name: 'Briggs',
  first_name: 'Lance',
  position: 'LB',
  weight: 244,
  age: 33,
  experience: 12
)
eben_britton = Player.find_or_create_by(
  number: 62,
  last_name: 'Britton',
  first_name: 'Eben',
  position: 'G',
  weight: 308,
  age: 26,
  experience: 6
)
james_brown = Player.find_or_create_by(
  number: 78,
  last_name: 'Brown',
  first_name: 'James',
  position: 'T',
  weight: 306,
  age: 25,
  experience: 3
)
jermon_bushrod = Player.find_or_create_by(
  number: 74,
  last_name: 'Bushrod',
  first_name: 'Jermon',
  position: 'T',
  weight: 315,
  age: 29,
  experience: 8
)
kadeem_carey = Player.find_or_create_by(
  number: 25,
  last_name: 'Carey',
  first_name: "Ka'Deem",
  position: 'RB',
  weight: 207,
  age: 21,
  experience: 0
)
jimmy_lausen = Player.find_or_create_by(
  number: 8,
  last_name: 'Clausen',
  first_name: 'Jimmy',
  position: 'QB',
  weight: 210,
  age: 26,
  experience: 5
)
nate_collins = Player.find_or_create_by(
  number: 98,
  last_name: 'Collins',
  first_name: 'Nate',
  position: 'DT',
  weight: 296,
  age: 26,
  experience: 5
)
chris_conte = Player.find_or_create_by(
  number: 47,
  last_name: 'Conte',
  first_name: 'Chris',
  position: 'S',
  weight: 203,
  age: 25,
  experience: 4
)
jay_cutler = Player.find_or_create_by(
  number: 6,
  last_name: 'Cutler',
  first_name: 'Jay',
  position: 'QB',
  weight: 220,
  age: 31,
  experience: 9
)
brian_de_la_puente = Player.find_or_create_by(
  number: 64,
  last_name: 'de la Puente',
  first_name: 'Brian',
  position: 'C',
  weight: 306,
  age: 29,
  experience: 5
)
shaun_draugn = Player.find_or_create_by(
  number: 38,
  last_name: 'Draughn',
  first_name: 'Shaun',
  position: 'RB',
  weight: 205,
  age: 26,
  experience: 2
)
james_dunbar = Player.find_or_create_by(
  number: 52,
  last_name: 'Dunbar',
  first_name: 'James',
  position: 'G',
  weight: 311,
  age: 23,
  experience: 0
)
brandon_dunn = Player.find_or_create_by(
  number: 79,
  last_name: 'Dunn',
  first_name: 'Brandon',
  position: 'DT',
  weight: 300,
  age: 21,
  experience: 0
)
armanti_edwards = Player.find_or_create_by(
  number: 80,
  last_name: 'Edwards',
  first_name: 'Armanti',
  position: 'WR',
  weight: 190,
  age: 26,
  experience: 5
)
david_fales = Player.find_or_create_by(
  number: 12,
  last_name: 'Fales',
  first_name: 'David',
  position: 'QB',
  weight: 212,
  age: 23,
  experience: 0
)
ego_ferguson = Player.find_or_create_by(
  number: 95,
  last_name: 'Ferguson',
  first_name: 'Ego',
  position: 'DT',
  weight: 309,
  age: 22,
  experience: 0
)
tony_fiammetta = Player.find_or_create_by(
  number: 43,
  last_name: 'Fiammetta',
  first_name: 'Tony',
  position: 'FB',
  weight: 250,
  age: 27,
  experience: 5
)
michael_ford = Player.find_or_create_by(
  number: 32,
  last_name: 'Ford',
  first_name: 'Michael',
  position: 'RB',
  weight: 216,
  age: 24,
  experience: 2
)
matt_forte = Player.find_or_create_by(
  number: 22,
  last_name: 'Forte',
  first_name: 'Matt',
  position: 'RB',
  weight: 218,
  age: 28,
  experience: 7
)
brandon_marshall = Player.find_or_create_by(
  number: 15,
  last_name: 'Marshall',
  first_name: 'Brandon',
  position: 'WR',
  weight: 218,
  age: 30,
  experience: 9
)
shea_mcclellin = Player.find_or_create_by(
  number: 50,
  last_name: 'McClellin',
  first_name: 'Shea',
  position: 'LB',
  weight: 245,
  age: 24,
  experience: 3
)
danny_mccray = Player.find_or_create_by(
  number: 29,
  last_name: 'McCray',
  first_name: 'Danny',
  position: 'S',
  weight: 221,
  age: 26,
  experience: 5
)
sherrick_mcmanis = Player.find_or_create_by(
  number: 27,
  last_name: 'McManis',
  first_name: 'Sherrick',
  position: 'CB',
  weight: 193,
  age: 26,
  experience: 5
)
jamil_merrell = Player.find_or_create_by(
  last_name: 'Merrell',
  first_name: 'Jamil',
  position: 'DE',
  weight: 252,
  age: 24,
  experience: 0
)
zach_miller = Player.find_or_create_by(
  number: 86,
  last_name: 'Miller',
  first_name: 'Zach',
  position: 'TE',
  weight: 236,
  age: 29,
  experience: 5
)
jordan_mills = Player.find_or_create_by(
  number: 67,
  last_name: 'Mills',
  first_name: 'Jordan',
  position: 'T',
  weight: 316,
  age: 23,
  experience: 2
)
josh_morgan = Player.find_or_create_by(
  number: 19,
  last_name: 'Morgan',
  first_name: 'Josh',
  position: 'WR',
  weight: 220,
  age: 29,
  experience: 7
)
matthew_mulligan = Player.find_or_create_by(
  number: 85,
  last_name: 'Mulligan',
  first_name: 'Matthew',
  position: 'TE',
  weight: 267,
  age: 29,
  experience: 6
)
ryan_mundy = Player.find_or_create_by(
  number: 21,
  last_name: 'Mundy',
  first_name: 'Ryan',
  position: 'FS',
  weight: 209,
  age: 29,
  experience: 6
)
pat_odonnell = Player.find_or_create_by(
  number: 16,
  last_name: "O'Donnell",
  first_name: 'Pat',
  position: 'P',
  weight: 220,
  age: 23,
  experience: 0
)
conor_oneill = Player.find_or_create_by(
  last_name: "O'Neill",
  first_name: 'Conor',
  position: 'LB',
  weight: 230,
  age: 23,
  experience: 0
)
michael_ola = Player.find_or_create_by(
  number: 70,
  last_name: 'Ola',
  first_name: 'Michael',
  position: 'T',
  weight: 312,
  age: 26,
  experience: 0
)
stephen_paea = Player.find_or_create_by(
  number: 92,
  last_name: 'Paea',
  first_name: 'Stephen',
  position: 'DT',
  weight: 300,
  age: 26,
  experience: 4
)
jordan_palmer = Player.find_or_create_by(
  number: 2,
  last_name: 'Palmer',
  first_name: 'Jordan',
  position: 'QB',
  weight: 232,
  age: 30,
  experience: 6
)
lee_pegues = Player.find_or_create_by(
  number: 78,
  last_name: 'Pegues',
  first_name: 'Lee',
  position: 'DT',
  weight: 291,
  age: 22,
  experience: 0
)
senorise_perry = Player.find_or_create_by(
  number: 35,
  last_name: 'Perry',
  first_name: 'Senorise',
  position: 'RB',
  weight: 187,
  age: 22,
  experience: 0
)
derricus_purdy = Player.find_or_create_by(
  number: 44,
  last_name: 'Purdy',
  first_name: 'Derricus',
  position: 'CB',
  weight: 190,
  age: 24,
  experience: 0
)
jeremiah_ratliff = Player.find_or_create_by(
  number: 90,
  last_name: 'Ratliff',
  first_name: 'Jeremiah',
  position: 'NT',
  weight: 303,
  age: 32,
  experience: 10
)
chad_rempel = Player.find_or_create_by(
  number: 46,
  last_name: 'Rempel',
  first_name: 'Chad',
  position: 'LS',
  weight: 229,
  age: 32,
  experience: 0
)
tracy_robertson = Player.find_or_create_by(
  number: 72,
  last_name: 'Robertson',
  first_name: 'Tracy',
  position: 'DE',
  weight: 300,
  age: 24,
  experience: 1
)
dante_rosario = Player.find_or_create_by(
  number: 88,
  last_name: 'Rosario',
  first_name: 'Dante',
  position: 'TE',
  weight: 242,
  age: 29,
  experience: 8
)
trevor_scott = Player.find_or_create_by(
  number: 76,
  last_name: 'Scott',
  first_name: 'Trevor',
  position: 'DE',
  weight: 260,
  age: 29,
  experience: 6
)
jordan_senn = Player.find_or_create_by(
  number: 59,
  last_name: 'Senn',
  first_name: 'Jordan',
  position: 'LB',
  weight: 225,
  age: 30,
  experience: 7
)
matt_slauson = Player.find_or_create_by(
  number: 68,
  last_name: 'Slauson',
  first_name: 'Matt',
  position: 'G',
  weight: 315,
  age: 28,
  experience: 6
)
michael_spurlock = Player.find_or_create_by(
  number: 18,
  last_name: 'Spurlock',
  first_name: 'Micheal',
  position: 'WR',
  weight: 210,
  age: 31,
  experience: 8
)
craig_steltz = Player.find_or_create_by(
  number: 20,
  last_name: 'Steltz',
  first_name: 'Craig',
  position: 'S',
  weight: 210,
  age: 28,
  experience: 7
)
will_sutton = Player.find_or_create_by(
  number: 93,
  last_name: 'Sutton',
  first_name: 'Will',
  position: 'DT',
  weight: 315,
  age: 22,
  experience: 0
)
charles_tillman = Player.find_or_create_by(
  number: 33,
  last_name: 'Tillman',
  first_name: 'Charles',
  position: 'CB',
  weight: 198,
  age: 33,
  experience: 12
)
terrence_tolliver = Player.find_or_create_by(
  number: 81,
  last_name: 'Toliver',
  first_name: 'Terrence',
  position: 'WR',
  weight: 204,
  age: 26,
  experience: 1
)
marcus_trice = Player.find_or_create_by(
  number: 35,
  last_name: 'Trice',
  first_name: 'Marcus',
  position: 'DB',
  weight: 193,
  age: 23,
  experience: 0
)
brock_vereen = Player.find_or_create_by(
  number: 45,
  last_name: 'Vereen',
  first_name: 'Brock',
  position: 'S',
  weight: 199,
  age: 21,
  experience: 0
)
cornelius_washington = Player.find_or_create_by(
  number: 94,
  last_name: 'Washington',
  first_name: 'Cornelius',
  position: 'DE',
  weight: 265,
  age: 24,
  experience: 2
)
tress_way = Player.find_or_create_by(
  number: 1,
  last_name: 'Way',
  first_name: 'Tress',
  position: 'P',
  weight: 215,
  age: 24,
  experience: 1
)
eric_weems = Player.find_or_create_by(
  number: 14,
  last_name: 'Weems',
  first_name: 'Eric',
  position: 'WR',
  weight: 195,
  age: 28,
  experience: 8
)
chris_williams = Player.find_or_create_by(
  number: 82,
  last_name: 'Williams',
  first_name: 'Chris',
  position: 'WR',
  weight: 175,
  age: 26,
  experience: 1
)
dj_williams = Player.find_or_create_by(
  number: 58,
  last_name: 'Williams',
  first_name: 'D.J.',
  position: 'LB',
  weight: 242,
  age: 31,
  experience: 11
)
cj_wilson = Player.find_or_create_by(
  number: 25,
  last_name: 'Wilson',
  first_name: 'C.J.',
  position: 'CB',
  weight: 187,
  age: 24,
  experience: 2
)
marquess_wilson = Player.find_or_create_by(
  number: 10,
  last_name: 'Wilson',
  first_name: 'Marquess',
  position: 'WR',
  weight: 184,
  age: 21,
  experience: 2
)
willie_young = Player.find_or_create_by(
  number: 97,
  last_name: 'Young',
  first_name: 'Willie',
  position: 'DE',
  weight: 251,
  age: 28,
  experience: 5
)
