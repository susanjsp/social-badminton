class SessionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def new?
    true
  end
end