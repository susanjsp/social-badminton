# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "1. Creating clubs..."
club1 = Club.create!(
  name: "Sky Badminton",
  about: "Come and join Logan's number 1 social scene"
)
club2 = Club.create!(
  name: "Dragon Badminton",
  about: "Brisbane's oldest social badminton club. Welcome to players of all levels, including absolute beginners!"
)
club3 = Club.create!(
  name: "Jindalee Badminton",
  about: "Meh"
)
puts "Finished creating #{Club.count} clubs..."

puts "2. Creating users..."
user1 = User.create!(
  name: "Peter Pan",
  email: "peter@qld.social",
  password: "peterpan",
  phone: "12345678",
  club: club1
)
user2 = User.create!(
  name: "Kevin Nguyen",
  email: "kevin@qld.social",
  password: "kevinnguyen",
  phone: "01234567",
  club: club2
)
user3 = User.create!(
  name: "Liz Love",
  email: "liz@qld.social",
  password: "lizlove",
  phone: "23456789",
  club: club3
)
puts "Finished creating #{User.count} users..."


# Add coords later?
puts "3. Creating locations..."
local1 = Location.create!(
  name: "Sky Badminton",
  address: "118/116 Wembley Rd, Logan Central QLD 4114",
  features: { free_parking: true, onsite_parking: true, atm: false },
)
local2 = Location.create!(
  name: "Dragon Badminton",
  address: "Somerville House, 4 Stephens Rd, South Brisbane QLD 4101",
  features: { free_parking: false, onsite_parking: true, atm: true },
)
local3 = Location.create!(
  name: "Logan Badminton & Court Hire",
  address: "2 Alfred St, Slacks Creek QLD 4127",
  features: { free_parking: true, onsite_parking: false, atm: false },
)
puts "Finished creating #{Location.count} locations..."

puts "4. Creating sessions..."
session1 = Session.create!(
  club: club1,
  location: local1,
  start_time: DateTime.new(2021, 1, 5, 18, 25, 0),
  end_time: DateTime.new(2021, 1, 5, 21, 0, 0),
  membership: false,
  beginners: true
)
session2 = Session.create!(
  club: club1,
  location: local1,
  start_time: DateTime.new(2021, 1, 7, 18, 25, 0),
  end_time: DateTime.new(2021, 1, 7, 21, 0, 0),
  membership: false,
  beginners: true
)
session3 = Session.create!(
  club: club2,
  location: local2,
  start_time: DateTime.new(2021, 1, 6, 19, 30, 0),
  end_time: DateTime.new(2021, 1, 6, 22, 55, 0),
  membership: true,
  beginners: true
)
session4 = Session.create!(
  club: club2,
  location: local2,
  start_time: DateTime.new(2021, 1, 9, 14, 00, 0),
  end_time: DateTime.new(2021, 1, 9, 17, 30, 0),
  membership: true,
  beginners: false
)
session5 = Session.create!(
  club: club3,
  location: local3,
  start_time: DateTime.new(2021, 1, 4, 17, 30, 0),
  end_time: DateTime.new(2021, 1, 4, 20, 00, 0),
  membership: false,
  beginners: false
)
session6 = Session.create!(
  club: club3,
  location: local3,
  start_time: DateTime.new(2021, 1, 5, 19, 30, 0),
  end_time: DateTime.new(2021, 1, 5, 22, 00, 0),
  membership: false,
  beginners: true
)
puts "Finished creating #{Session.count} sessions..."

# Time.strptime('5/1/2021 21:00', '%d/%m/%Y %H:%M')