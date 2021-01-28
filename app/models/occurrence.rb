class Occurrence < ApplicationRecord
  belongs_to :session
  has_one :location, through: :sessions
  has_one :club, through: :sessions
end
