class ClubsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @clubs = policy_scope(Club)
  end

  def show
    @club = Club.find(params[:id])
    authorize @club

    @marker = build_geojson
  end

  def edit
    authorize @club
  end

  def update

  end

  private

  def build_geojson
    {
      lat: @club.homebase.latitude,
      lng: @club.homebase.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { location: @club.homebase})
    }
  end
end
