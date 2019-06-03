class UserPolicy < ApplicationPolicy
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

  def update?
    true
  end

  def myprofile?
    true
  end

  def show?
    true
  end
end
