class ClubsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @clubs = policy_scope(Club)

    @locations = policy_scope(Location)
    @markers = @locations.geocoded.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { location: location})
      }
    end
  end

  def show
    @club = Club.find(params[:id])
    authorize @club
  end

  def edit
    authorize @club
  end

  def update

  end
end
