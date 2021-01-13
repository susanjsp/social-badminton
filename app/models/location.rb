class Location < ApplicationRecord
  has_many :sessions
  has_many :clubs, through: :sessions
  has_one :homeclub, foreign_key: "homebase_id", class_name: "Club"

  serialize :features, Hash
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
