class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def view?(user, second_user)
    user == second_user
  end
end
