class ProfilesPolicy < ApplicationPolicy
  def search?
    @user.is_manager
  end

  def myprofile?
    true
  end
end
