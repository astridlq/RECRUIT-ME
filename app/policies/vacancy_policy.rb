class VacancyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def search?
    true
  end

  def index?
    true
  end

  def show?
    true
  end
end
