class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return false unless user

    user.proveloper?
  end

  def update?
    return false unless user

    user.proveloper? and record.creator.id == user.creator.id
  end
end
