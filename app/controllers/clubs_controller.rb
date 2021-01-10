class ClubsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @clubs = policy_scope(Club)
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
