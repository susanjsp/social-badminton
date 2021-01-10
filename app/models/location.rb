class Location < ApplicationRecord
  has_many :sessions
  has_many :clubs, through: :sessions
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
