class PostPolicy < ApplicationPolicy

  class Scope < Scope

    def resolve
      scope.all
    end

  end

  def create?
    user != nil
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
