class Club < ApplicationRecord
  has_many :users
  has_many :sessions
  has_many :locations, through: :sessions
  has_many :occurrences, through: :sessions

  belongs_to :homebase, foreign_key: "homebase_id", class_name: "Location"
end
