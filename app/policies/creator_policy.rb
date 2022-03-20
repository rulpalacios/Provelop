class CreatorPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    record == user.creator
  end

  def edit?
    record == user.creator
  end
end
