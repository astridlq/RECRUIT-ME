class ProfilesController < ApplicationController
  def search
    @user = current_user
    authorize :profiles, :search?
  end

  def myprofile
    @user = current_user
    authorize :profiles, :myprofile?
  end
end
