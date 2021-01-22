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
  homebase: sleeman
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
  homebase: sams
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
  website: 'https://skybadminton.com.au/'
)
skyc = Club.create!(
  name: 'Sky Badminton Club',
  about: 'Welcome to Sky Badminton Centre – the best badminton venue in Brisbane. Our state-of-the-art courts and facilities are well-equipped and meet international competition requirements.',
  facebook: 'https://www.facebook.com/rosyhtang/',
  website: 'https://skybadminton.com.au/',
  homebase: sky
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
  homebase: griffith
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

# puts "Creating occurrences for calendar..."
# Session.all.each do |session|
#   session.schedule.next_occurrences(10).each do |occurrence|
#     event = Occurrence.create!(
#       start_time: occurrence.start_time,
#       end_time: occurrence.end_time,
#       session: session
#     )
#   end
# end
# puts "Finished creating #{Occurrence.count} occurrences"