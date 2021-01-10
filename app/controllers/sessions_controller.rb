class SessionsController < ApplicationController

  def all
    @sessions = Session.all
  end
end
