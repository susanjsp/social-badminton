# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   Time.strptime('5/1/2021 21:00', '%d/%m/%Y %H:%M')

puts "1a. Creating Chandler Badminton Club, location & sessions..."
sleeman = Location.create!(
  name: 'Sleeman Sports Complex',
  address: '1763 Old Cleveland Road, Chandler QLD 4155',
  features: { free_parking: false, onsite_parking: true, atm: true },
  website: 'https://www.sleemansports.com.au/'
)
chandler = Club.create!(
  name: 'Chandler Badminton Club',
  about: 'A club for intermediate - advanced badminton players',
  facebook: 'https://www.facebook.com/chandlerbadminton/',
  homebase: sleeman,
  logo: 'https://res.cloudinary.com/susanjsp/image/upload/v1612485891/badminton-social/Logos/chandler-bc_bs222d.jpg'
)
chandler1 = Session.create!(
  club: chandler,
  location: sleeman,
  first_event: DateTime.new(2021,1,5,9,30, 0, "+10:00"),
  membership: false,
  beginners: false,
  duration_mins: 120
)
chandler1.new_schedule(1, 2)
chandler1.save!

puts "1b. Finished creating Chandler Badminton Club! :)"

puts "2a. Creating Dragon Badminton, location & sessions..."
sams = Location.create!(
  name: "Sam's Badminton Arena",
  address: "137 Bage St Nundah QLD 4012",
  features: { free_parking: true, onsite_parking: true, atm: true, eftpos: true, cash_only: false }
)
dragon = Club.create!(
  name: 'Dragon Badminton Club',
  about: 'Your all-in-one club. Located in Brisbane, we welcome anyone, any standard, locals or visitors passing-by.',
  facebook: 'https://www.facebook.com/DragonBadmintonClub/',
  website: 'https://www.dragonclub.org/',
  homebase: sams,
  logo: 'https://res.cloudinary.com/susanjsp/image/upload/v1612486103/badminton-social/Logos/dragon-bc_syuknb.jpg'
)
dragon1 = Session.create!(
  club: dragon,
  location: sams,
  first_event: DateTime.new(2021, 1, 2, 14,0,0, "+10:00"),
  membership: false,
  beginners: true,
  member_price: 10,
  non_member_price: 13,
  duration_mins: 150
)
dragon1.new_schedule(6)
dragon1.save!
puts "2b. Finished creating Dragon Badminton Club! :)"

puts "3a. Creating Sky Badminton, location & sessions..."
sky = Location.create!(
  name: "Sky Badminton Centre",
  address: "116 – 118 Wembley Road, Logan Central, QLD 4114",
  features: { free_parking: true, onsite_parking: true, atm: false, eftpos: false, cash_only: true, court_hire: true },
  website: 'https://skybadminton.com.au/',

)
skyc = Club.create!(
  name: 'Sky Badminton Club',
  about: 'Welcome to Sky Badminton Centre – the best badminton venue in Brisbane. Our state-of-the-art courts and facilities are well-equipped and meet international competition requirements.',
  facebook: 'https://www.facebook.com/rosyhtang/',
  website: 'https://skybadminton.com.au/',
  homebase: sky,
  logo: 'https://res.cloudinary.com/susanjsp/image/upload/v1612486222/badminton-social/Logos/sky-bc_zt7wag.png'
)
sky1 = Session.create!(
  club: skyc,
  location: sky,
  first_event: DateTime.new(2021, 1, 5, 10,30,0, "+10:00"),
  membership: false,
  beginners: true,
  member_price: 10,
  non_member_price: 15,
  duration_mins: 120
)
sky1.new_schedule(2,5)
sky1.save!
puts "3b. Finished creating Sky Badminton Club! :)"

puts "4a. Creating Griffith Badminton, location & sessions..."
griffith = Location.create!(
  name: "Griffith University - Mt Gravatt Recreation Hall (M12) - Next to Aquatic & Fitness Centre",
  address: "Sports Road, Mount Gravatt Queensland 4122, Australia",
  features: { free_parking: true, onsite_parking: true, atm: false, eftpos: false, cash_only: true, court_hire: false },
  website: 'https://www.griffith.edu.au/sport/sport-and-recreation/recreation-hall'
)
griffithc = Club.create!(
  name: 'Griffith Badminton Association',
  about: 'Griffith Badminton Association (GBA) is a registered Griffith University organization badminton club. Club players are a mix of ages and skills; from beginners to competitive levels.The Club welcome all players intrested in the Sport of Badminton.',
  facebook: 'https://www.facebook.com/Griffith-Badminton-Association-172463013294/',
  homebase: griffith,
  logo: 'https://res.cloudinary.com/susanjsp/image/upload/v1612485891/badminton-social/Logos/griffith-bc_gb8w5s.jpg'
)
griffith1 = Session.create!(
  club: griffithc,
  location: griffith,
  first_event: DateTime.new(2021, 1, 1, 20,00,0, "+10:00"),
  membership: false,
  beginners: true,
  member_price: 5,
  non_member_price: 8,
  duration_mins: 120
)
griffith1.new_schedule(5)
griffith1.save!
griffith2 = Session.create!(
  club: griffithc,
  location: griffith,
  first_event: DateTime.new(2021, 1, 2, 17,00,0, "+10:00"),
  membership: false,
  beginners: true,
  member_price: 5,
  non_member_price: 8,
  duration_mins: 180
)
griffith2.new_schedule(6)
griffith2.save!
puts "4b. Finished creating Griffith Badminton Club! :)"

puts "5a. Creating Kenmore Badminton, location & sessions..."
kenmore1 = Location.create!(
  name: "Kenmore State High School",
  address: "Kenmore State High School, 60 Aberfeldy St, Kenmore QLD 4069",
  features: { free_parking: true, onsite_parking: true, atm: false, eftpos: false, cash_only: true, court_hire: false }
)
kenmore2 = Location.create!(
  name: "Mogill State School",
  address: "3417 Moggill Rd, Moggill QLD 4070",
  features: { free_parking: true, onsite_parking: true, atm: false, eftpos: false, cash_only: true, court_hire: false }
)
kenmorec = Club.create!(
  name: 'Kenmore / Moggill Badminton Club',
  about: 'The Kenmore Badminton Club is a social badminton club which hosts a wide range of player skill and ages, at two badminton halls (both with 4 courts)',
  facebook: 'https://www.facebook.com/kenmoremoggilbadmintonclub/',
  homebase: kenmore1,
  logo: 'https://res.cloudinary.com/susanjsp/image/upload/v1612485891/badminton-social/Logos/kenmore-bc_anxlyz.jpg'
)
kenmore2.homeclub = kenmorec
kenmore2.save!
kenmore_sesh1 = Session.create!(
  club: kenmorec,
  location: kenmore1,
  first_event: DateTime.new(2021, 1, 5, 19,15,0, "+10:00"),
  membership: false,
  beginners: true,
  member_price: 5,
  non_member_price: 10,
  duration_mins: 120
)
kenmore_sesh1.new_schedule(2)
kenmore_sesh1.save!
kenmore_sesh2 = Session.create!(
  club: kenmorec,
  location: kenmore2,
  first_event: DateTime.new(2021, 1, 7, 19,15,0, "+10:00"),
  membership: false,
  beginners: true,
  member_price: 5,
  non_member_price: 10,
  duration_mins: 120
)
kenmore_sesh2.new_schedule(4)
kenmore_sesh2.save!
puts "5b. Finished creating kenmore Badminton Club! :)"

puts "6a. Creating Sunnybank Hills Badminton, location & sessions..."
sbank_hills1 = Location.create!(
  name: "Brisbane State High School",
  address: "Cordelia St &, Glenelg St, South Brisbane QLD 4101, Australia",
  features: { free_parking: true, onsite_parking: true, atm: false, eftpos: false, cash_only: true, court_hire: false }
)
sbank_hills2 = Location.create!(
  name: "Springwood Road State School",
  address: "Springwood Rd, Springwood QLD 4127, Australia",
  features: { free_parking: true, onsite_parking: true, atm: false, eftpos: false, cash_only: true, court_hire: false }
)
sbank_hillsc = Club.create!(
  name: 'Sunnybank Hills Badminton Club',
  facebook: 'https://www.facebook.com/sunnybankbadmintonclub/',
  website: 'https://www.sbhbadminton.com.au/',
  homebase: sbank_hills1,
  logo: 'https://res.cloudinary.com/susanjsp/image/upload/v1612487785/badminton-social/Logos/sbank-hills-bc_vxcuiz.png'
)
sbank_hills2.homeclub = sbank_hillsc
sbank_hills2.save!
sbank_hills_sesh1 = Session.create!(
  club: sbank_hillsc,
  location: sbank_hills1,
  first_event: DateTime.new(2021, 1, 5, 18,30,0, "+10:00"),
  membership: false,
  beginners: true,
  non_member_price: 10,
  duration_mins: 150
)
sbank_hills_sesh1.new_schedule(2)
sbank_hills_sesh1.save!
sbank_hills_sesh2 = Session.create!(
  club: sbank_hillsc,
  location: sbank_hills2,
  first_event: DateTime.new(2021, 1, 6, 19,15,0, "+10:00"),
  membership: false,
  beginners: true,
  non_member_price: 10,
  duration_mins: 135
)
sbank_hills_sesh2.new_schedule(3)
sbank_hills_sesh2.save!
puts "6b. Finished creating Sunnybank Hills Badminton Club! :)"

