class VacancyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def search?
    @user.is_manager
  end

  def index?
    @user.is_manager
  end
end
