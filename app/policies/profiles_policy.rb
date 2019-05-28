class ProfilesPolicy < ApplicationPolicy
  def search?
    @user.is_manager
  end
end
