class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new ]

  def index
    load_occurrences
    @occurrences = Occurrence.all
  end

  def new
    @session = Session.new
    authorize @session
  end

  private

  def load_occurrences
    # Resets Occurrences & Create objects of all events queried from 2 months before -> 2 months after current date
    # This seems super inelegant.. is there a better way to do this??
    Occurrence.destroy_all
    policy_scope(Session).each do |session|
      session.schedule.occurrences_between(Time.now - 2.months, Time.now + 2.months).each do |e|
        event = Occurrence.create(
          start_time: e.start_time,
          end_time: e.end_time,
          session: session
        )
      end
    end
  end
end

# If Occurrence is from xxx club, make background color blue
