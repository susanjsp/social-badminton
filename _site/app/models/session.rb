class Session < ApplicationRecord
  belongs_to :club
  belongs_to :location
  has_many :occurrences
  validates :first_event, :duration_mins, presence: true
  validates :beginners, :membership, inclusion: { in: [true, false], message: "Please select true or false." }

  # Settings for Ice_cCube recurring events
  include IceCube
  serialize :schedule, IceCube::Schedule

  # Method for creating new schedule - adds "master" event and recurrence rule
  # Options are an integer from 0-6, which represents days of the week ie. 0 => Sunday
  def new_schedule(*args)
    if !args.all? { |e| e.is_a?(Integer) && e >= 0 && e <= 6 }
      return "Please enter a number from 0-6 where each number represents a day of the week. 0 represents Sunday, 1 represents Monday, etc."
    end
    schedule1 = Schedule.new(self.first_event, duration: self.duration_mins.minutes )
    schedule1.add_recurrence_rule Rule.weekly.day(args)
    self.schedule = schedule1
    self.save!
  end
end
