class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @locations = policy_scope(Location)
    @markers = build_geojson
  end

  private

  def build_geojson
    @locations.geocoded.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { location: location})
      }
    end
  end
end
