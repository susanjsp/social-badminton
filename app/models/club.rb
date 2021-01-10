class Club < ApplicationRecord
  has_many :users
  has_many :sessions

  has_many :locations, through: :sessions
end
