class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    true
  end

  def search?
    @user.is_manager
  end

  def index?
    @user.is_manager
  end

  def edit_user_skills?
    true
  end

  def update_user_skills?
    true
  end

  def edit_develop_skills?
    true
  end

  def update_develop_skills?
    true
  end
  def myprofile?
    true
  end

  def show?
    true
  end
end
